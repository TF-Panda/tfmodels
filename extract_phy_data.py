import sys
import pprint

from panda3d.core import *

smd_filename = sys.argv[1]

smd_file = open(smd_filename, 'r')
smd_lines = smd_file.readlines()

nodes = {}

node_parents = {}

node_points = {}

def read_nodes(smd_lines, i):

    while i < len(smd_lines):
        line = smd_lines[i]
        tokens = line.split()
        if tokens[0] == "end":
            break

        print(tokens)

        nodes[int(tokens[0])] = tokens[1].replace("\"", "")
        node_parents[int(tokens[0])] = int(tokens[2])

        i += 1

    return i

def read_triangles(smd_lines, i):

    while i < len(smd_lines):
        line = smd_lines[i]
        tokens = line.split()
        if tokens[0] == "end":
            break

        if tokens[0] == "phy":
            point0_line = smd_lines[i + 1]
            point1_line = smd_lines[i + 2]
            point2_line = smd_lines[i + 3]

            point0_tokens = point0_line.split()
            point1_tokens = point1_line.split()
            point2_tokens = point2_line.split()

            node0 = int(point0_tokens[0])
            node1 = int(point1_tokens[0])
            node2 = int(point2_tokens[0])

            point0 = Point3(float(point0_tokens[1]),
                            -float(point0_tokens[3]),
                            float(point0_tokens[2]))

            point1 = Point3(float(point1_tokens[1]),
                            -float(point1_tokens[3]),
                            float(point1_tokens[2]))

            point2 = Point3(float(point2_tokens[1]),
                            -float(point2_tokens[3]),
                            float(point2_tokens[2]))

            if not node0 in node_points:
                node_points[node0] = [point0]
            else:
                node_points[node0].append(point0)

            if not node1 in node_points:
                node_points[node1] = [point1]
            else:
                node_points[node1].append(point1)

            if not node2 in node_points:
                node_points[node2] = [point2]
            else:
                node_points[node2].append(point2)

            i += 3
            continue

        i += 1

    return i

i = 0
while i < len(smd_lines):
    line = smd_lines[i]
    tokens = line.split()

    if tokens[0] == "nodes":
        i = read_nodes(smd_lines, i + 1)
        i += 1
        continue
    elif tokens[0] == "triangles":
        i = read_triangles(smd_lines, i + 1)
        i += 1
        continue

    i += 1

smd_file.close()

pp = pprint.PrettyPrinter(indent=4, width=80)

print("nodes = ", end="")
pp.pprint(nodes)

print("node_parents = ", end="")
pp.pprint(node_parents)

print("node_points = ", end="")
pp.pprint(node_points)
