import bpy

import io_scene_valvesource

import glob

import os

char_name = input("char name: ")
prefix = char_name + "-"
zero_path = "./" + prefix + "zero.blend"
coll_name = char_name
rig_name = char_name + ".qc_skeleton"
anims_pattern = input("anims: ")

anims = glob.glob(anims_pattern)

imported_anims = []

def reset_blend():
    bpy.ops.wm.read_homefile(use_empty=True)

if not os.path.isdir("anims"):
    os.mkdir("anims")

for anim in anims:
    anim_name = os.path.splitext(os.path.basename(anim))[0]

    if 'corrective_animation' in anim_name:
        print("Skipping corrective animation", anim)
        continue

    print("Importing", anim_name)

    # Link up with the master rig and mesh file.
    with bpy.data.libraries.load(os.path.abspath(zero_path), link=True, relative=True) as (data_from, data_to):
        data_to.collections = [c for c in data_from.collections if c.startswith(coll_name)]
    # Link collection to scene collection.
    for coll in data_to.collections:
        if coll is not None:
            bpy.context.scene.collection.children.link(coll)

    objects = bpy.context.scene.objects
    bpy.context.view_layer.objects.active = objects[rig_name]

    bpy.ops.object.proxy_make()
    bpy.context.view_layer.objects.active.name = rig_name + "_proxy"

    bpy.ops.import_scene.smd("EXEC_DEFAULT", filepath=anim, upAxis='Z', createCollections=False)
    
    bpy.ops.wm.save_mainfile(filepath=os.getcwd() + "/anims/" + prefix + anim_name + ".blend")
    bpy.ops.file.make_paths_relative()
    bpy.ops.wm.save_mainfile()

    reset_blend()

    imported_anims.append(anim_name)

imported_anims.sort()

print("#define %s_ANIMS \\" % char_name.upper())
for i in range(len(imported_anims)):
    print("  %s" % imported_anims[i], end='')
    if i < len(imported_anims) - 1:
        print(" \\")
    else:
        print("")
