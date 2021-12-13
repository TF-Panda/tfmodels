"""
Imports a .qc file into a new Blender scene and saves it out.  Does some
mangling of the models hierarchy to be set up for exporting from the model
tree.
"""

import bpy
import io_scene_valvesource

import sys
import os
import argparse

p = argparse.ArgumentParser(description="Import a .qc file into Blender for the $TFMODELS pipeline.")
p.add_argument('-i', '--input', help='Input .qc filename', required=True)
p.add_argument('-o', '--output', help='Output .blend filename', required=True)
p.add_argument('-l', '--lightmap_uvs', help='Bake lightmap UVs into the model.', action='store_true', required=False)
p.add_argument('-a', '--anims', help='Import animations into separate .blend files that link up with the input .blend file.', action='store_true', required=False)
args = p.parse_known_args(sys.argv[sys.argv.index("--")+1:])[0]

qcFile = args.input
outFile = args.output

bpy.ops.wm.read_homefile(use_empty=True)

context = bpy.context
scene = context.scene
vl = context.view_layer

bpy.ops.import_scene.smd("EXEC_DEFAULT", filepath=qcFile, upAxis='Z', createCollections=False, doAnim=False)

collName = os.path.splitext(os.path.basename(qcFile))[0]
bpy.ops.collection.create(name=collName)
bpy.context.scene.collection.children.link(bpy.data.collections[collName])

# If there's an object named "VTA vertices", delete that.
bpy.ops.object.select_all(action='DESELECT')
if 'VTA vertices' in bpy.data.objects:
    bpy.data.objects['VTA vertices'].select_set(True)
    bpy.ops.object.delete()

if args.lightmap_uvs:
    print("Generating lightmap UVs...", file=sys.stderr)

    # Pack UV's for all meshes onto a single lightmap palette.
    for obj in scene.objects:
        # Skip for physics mesh.
        if (obj.type == 'MESH') and "physics" not in obj.name:
            vl.objects.active = obj
            obj.select_set(True)
            print(obj.name)
            lm = obj.data.uv_layers.get("lightmap")
            if not lm:
                lm = obj.data.uv_layers.new(name="lightmap")
            lm.active = True

    bpy.ops.object.editmode_toggle()
    bpy.ops.mesh.select_all(action='SELECT')
    bpy.ops.uv.lightmap_pack()
    bpy.ops.object.editmode_toggle()

bpy.ops.wm.save_mainfile(filepath=outFile)
