
from panda3d.core import *

import sys
import glob
import os

if len(sys.argv) < 2:
    print("Specify input file pattern!")
    sys.exit(1)

files = glob.glob(sys.argv[1], recursive=True)

def process_smd(filename):
    basename = os.path.splitext(filename)[0]
    if not os.path.isfile(basename + "_corrective_animation.smd"):
        return

    corrective_filename = basename + "_corrective_animation.smd"

    corr_file = open(corrective_filename, 'r')
    sub_pos = Vec3()
    sub_angles = Vec3()
    lines = corr_file.readlines()
    for i in range(len(lines)):
        line = lines[i]
        tokens = line.split()

        if len(tokens) != 2:
            continue

        if tokens[0] != "time" or tokens[1] != "0":
            continue

        frame_zero_line = lines[i + 1]
        frame_tokens = frame_zero_line.split()

        sub_pos.set(float(frame_tokens[1]), float(frame_tokens[2]), float(frame_tokens[3]))
        sub_angles.set(float(frame_tokens[4]), float(frame_tokens[5]), float(frame_tokens[6]))

        break

    corr_file.close()

    new_lines = []

    got_it = False
    got_it_idx = -1

    smd_file = open(filename, 'r')
    lines = smd_file.readlines()
    for i in range(len(lines)):
        line = lines[i]

        if got_it:
            if got_it_idx != i:
                new_lines.append(line)
            continue

        tokens = line.split()

        if len(tokens) != 2:
            new_lines.append(line)
            continue

        if tokens[0] != "time" or tokens[1] != "0":
            new_lines.append(line)
            continue

        frame_zero_line = lines[i + 1]
        frame_tokens = frame_zero_line.split()

        pos = Point3(float(frame_tokens[1]), float(frame_tokens[2]), float(frame_tokens[3]))
        angles = Vec3(float(frame_tokens[4]), float(frame_tokens[5]), float(frame_tokens[6]))

        frame_tokens[1] = format(pos[0] - sub_pos[0], ".6f")
        frame_tokens[2] = format(pos[1] - sub_pos[1], ".6f")
        frame_tokens[3] = format(pos[2] - sub_pos[2], ".6f")
        frame_tokens[4] = format(angles[0] - sub_angles[0], ".6f")
        frame_tokens[5] = format(angles[1] - sub_angles[1], ".6f")
        frame_tokens[6] = format(angles[2] - sub_angles[2], ".6f")

        new_lines.append(line)
        new_lines.append("    " + " ".join(frame_tokens) + "\n")

        got_it = True
        got_it_idx = i + 1

    smd_file.close()

    smd_file = open(filename, 'w')
    for line in new_lines:
        smd_file.write(line)
    smd_file.close()

    print("Wrote", filename)

for filename in files:
    if "_corrective_animation" in filename:
        continue
    process_smd(filename)
