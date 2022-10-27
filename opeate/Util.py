from qiskit.dagcircuit import DAGOpNode
from qiskit.circuit.quantumregister import Qubit
import numpy as np
import math

def _successors(node, dag):
    for _, successor, edge_data in dag.edges(node):
        if type(successor) != DAGOpNode:
            continue
        if isinstance(edge_data, Qubit):
            yield successor


def _is_resolved(applied_predecessors,node):
    """Return True if all of a node's predecessors in dag are applied."""
    return applied_predecessors[node] == len(node.qargs)


def addset(nsc, node):
    v0, v1 = node
    if v0.index > v1.index:
        v0, v1 = v1, v0
    flag = True
    for s in nsc:
        if v0.index == s[0] and v1.index == s[1]:
            flag = False
            break
    if flag:
        nsc.append((v0.index, v1.index))
def get_max_distance(coupling_map):
    max_distance = 0
    for i in range(coupling_map.size()):
        for j in range(coupling_map.size()):
            if coupling_map.distance(i, j) > max_distance:
                max_distance = coupling_map.distance(i, j)
    return max_distance

def get_initial(cx_error_dist, coupling_map):
    error_max = max(max(row) for row in cx_error_dist)
    max_distance = get_max_distance(coupling_map)
    correct_min = 1 - error_max
    max_distance_cnot = 3 * max_distance - 2
    max_error = math.pow(correct_min, max_distance_cnot)
    len = max_distance_cnot * 100000
    grems = np.array([0.0] * len)
    s = 1.0
    grems[0] = s
    for i in range(len - 1):
        s *= max_error
        grems[i + 1] = s
    return correct_min, max_distance_cnot, grems

def get_initial_cir(circs, max_distance_cnot):
    gori = circs.count_ops()["cx"]
    len = max_distance_cnot * 100000
    matrix = np.array([0.0] * len)
    for i in range(len):
        matrix[i] = math.exp(-1 * i / (gori * max_distance_cnot))
    return matrix

