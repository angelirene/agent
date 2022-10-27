from util.Util import _successors, _is_resolved
import math
# def getcost(physical_qubits, cir, coupling_map):
#     cost = 0
#     # print("physical_qubits", physical_qubits)
#     for gate in cir:
#         if gate[0].name != 'cx': continue
#         v0, v1 = gate[1]
#         cost += coupling_map.distance(physical_qubits[v0.index], physical_qubits[v1.index]) - 1
#     return cost
# def get_cost(map_cir, cx_error_dist):
#     cost = 1
#     L = len(map_cir)
#     dep = map_cir.depth()
#     for gate in map_cir:
#         if gate[0].name == 'cx':
#             v0, v1 = gate[1]
#             cost *= (1 - cx_error_dist[v0.index][v1.index]) * 1000
#         elif gate[0].name == 'swap':
#             v0, v1 = gate[1]
#             cost *= (1 - cx_error_dist[v0.index][v1.index]) * 1000
#             cost *= (1 - cx_error_dist[v1.index][v0.index]) * 1000
#             cost *= (1 - cx_error_dist[v0.index][v1.index]) * 1000
#     # cost *= math.exp(-dep/L)
#     # print(L, dep, cost)
#     return cost
def get_frog_cost(fidelity, dep, ori, grems, matrix):
    # m = (1-emax)
    # n = grem * (3 * D-2)
    # # print("m,n:", m, n)
    # s = math.pow(m, n)
    vcir = grems[ori]
    # t = math.exp(-1 * (max(dep) + grem*(3*D - 2)) / gori)
    pcir = matrix[dep]
    # print("s,t:", fidelity, s, t)
    return fidelity * pcir * vcir

def get_layer_cost(dag, front_layer, applied_predecessors, EXTENDED_SET_SIZE, coupling_map,current_layout , trial_layout):
    cost = 0
    incremented = list()
    tmp_front_layer = front_layer
    done = False
    i = 1
    while tmp_front_layer and not done:
        if i >= EXTENDED_SET_SIZE:
            done = True
            break
        new_tmp_front_layer = list()
        for node in tmp_front_layer:
            for successor in _successors(node, dag):
                incremented.append(successor)
                applied_predecessors[successor] += 1
                if _is_resolved(applied_predecessors, successor):
                    new_tmp_front_layer.append(successor)
                    if len(successor.qargs) == 2:
                        v0, v1 = successor.qargs
                        # print(v0.index, v1)
                        cost += coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1])

        i += 1
        tmp_front_layer = new_tmp_front_layer
    for node in incremented:
        applied_predecessors[node] -= 1
    return cost
# def _compute_cost(coupling_map, layer, current_layout, trial_layout, swap_qubits):
#     cost1 = 0
#     cost2 = 0
#     for node in layer:
#         v0, v1 = node.qargs
#         # print("ssssssssssssssssssss", coupling_map.distance(current_layout[v0], current_layout[v1]),coupling_map.distance(trial_layout[v0], trial_layout[v1]))
#         cost1 += coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1])
#         if (coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1])) > 0:
#             cost2 += 1
#         # cost.append(coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1]))
#
#     return cost1
# def get_new_scores(coupling_map, front_layer, current_layout, trial_layout, applied_predecessors, dag):
#     cost = []
#     for node in front_layer:
#         v0, v1 = node.qargs
#         cost.append(coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1]))
#
#     return cost

def get_scores(coupling_map, frog, trial_layout):
    cost = 0
    for node in frog.front_layer:
        v0, v1 = node.qargs
        cost +=coupling_map.distance(frog.current_layout[v0], frog.current_layout[v1]) - coupling_map.distance(
            trial_layout[v0], trial_layout[v1])
        # if coupling_map.distance(trial_layout[v0], trial_layout[v1]) == 1:
        #     cost += 1

    return cost

def get_map_scores(coupling_map, front_layer, current_layout, trial_layout, applied_predecessors, dag, EXTENDED_SET_SIZE):

    cost = 0.0
    m = 1.0
    for node in front_layer:
        v0, v1 = node.qargs
        cost += 0.1 * (coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1]))
        if coupling_map.distance(trial_layout[v0], trial_layout[v1]) == 1:
            cost += 1

    # incremented = list()
    # tmp_front_layer = front_layer
    # done = False
    # i = 1
    # while tmp_front_layer and not done:
    #     if i >= EXTENDED_SET_SIZE:
    #         done = True
    #         break
    #     new_tmp_front_layer = list()
    #     m *= 0.5
    #     for node in tmp_front_layer:
    #         for successor in _successors(node, dag):
    #             incremented.append(successor)
    #             applied_predecessors[successor] += 1
    #             if _is_resolved(applied_predecessors, successor):
    #                 new_tmp_front_layer.append(successor)
    #                 if len(successor.qargs) == 2:
    #                     v0, v1 = successor.qargs
    #                     cost += m * (coupling_map.distance(current_layout[v0], current_layout[v1]) \
    #                             - coupling_map.distance(trial_layout[v0],trial_layout[v1]))
    #                     # print(v0.index, v1)
    #                     # if coupling_map.distance(trial_layout[v0], trial_layout[v1]) == 1:
    #                     #     cost += 1
    #
    #     i += 1
    #     tmp_front_layer = new_tmp_front_layer
    # for node in incremented:
    #     applied_predecessors[node] -= 1
    return cost
#     scores = []
#     # first_gate = _compute_gate(coupling_map, front_layer, trial_layout, applied_predecessors, dag)
#     # scores.append(first_gate)
#     first_cost = _compute_cost(coupling_map, front_layer, current_layout, trial_layout, swap_qubits)
#     scores.append(first_cost)
#     # extended_sets = get_layer_set(dag, front_layer, applied_predecessors, 1)
#     # for layer in extended_sets:
#     #     cost = _compute_cost(coupling_map, layer, current_layout,trial_layout, swap_qubits)
#     #     scores.append(cost)
#     # print(scores)
#     return first_cost
#
# def _compute_cost(coupling_map, layer, current_layout, trial_layout, swap_qubits):
#     cost1 = 0
#     cost2 = 0
#     for node in layer:
#         v0, v1 = node.qargs
#         cost1 += coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1])
#         if coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1]) > 0:
#             cost2 += 1
#
#         # cost.append(coupling_map.distance(current_layout[v0], current_layout[v1]) - coupling_map.distance(trial_layout[v0], trial_layout[v1]))
#     return cost1, cost2
