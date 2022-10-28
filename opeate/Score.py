from util import _successors, _is_resolved
import math
def get_frog_cost(fidelity, dep, ori, grems, matrix):   
    vcir = grems[ori]   
    pcir = matrix[dep]   
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
    return cost
