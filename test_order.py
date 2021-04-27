
from panda3d.core import *

quat = Quat(0.124319017258159, -0.00627040564040869, -0.128253875611365, 0.983898575744337)
goal = Vec3(1.14345550898209, -14.7200301816724, 14.5613838620405)

import itertools

combos = list(itertools.product([1, 2, 3, 4, -1, -2, -3, -4], repeat=4))

for combo in combos:
    new_quat = Quat()
    for i in range(4):
        idx = combo[i]
        if idx < 0:
            new_quat[i] = -quat[abs(idx) - 1]
        else:
            new_quat[i] = quat[idx - 1]

    new_hpr = new_quat.get_hpr()

    if abs(new_hpr[0] - goal[0]) <= 0.1 and \
       abs(new_hpr[1] - goal[1]) <= 0.1 and \
       abs(new_hpr[2] - goal[2]) <= 0.1:
        print("-------------------------------")
        print("Candidate:", combo)
        print(goal)
        print(new_hpr)
