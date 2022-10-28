from util import _successors, _is_resolved

def _obtain_extended_set(dag, front_layer, applied_predecessors, EXTENDED_SET_SIZE):
    extended_set = list()
    incremented = list()
    tmp_front_layer = front_layer
    done = False
    while tmp_front_layer and not done:
        new_tmp_front_layer = list()
        for node in tmp_front_layer:
            for successor in _successors(node, dag):
                incremented.append(successor)
                applied_predecessors[successor] += 1
                if _is_resolved(applied_predecessors, successor):
                    new_tmp_front_layer.append(successor)
                    if len(successor.qargs) == 2:
                        extended_set.append(successor)
            if len(extended_set) >= EXTENDED_SET_SIZE:
                done = True
                break
        tmp_front_layer = new_tmp_front_layer
    for node in incremented:
        applied_predecessors[node] -= 1
    return extended_set

def _obtain_swaps(coupling_map, front_layer, current_layout, _bit_indices):
    # Q = QuantumRegister(coupling_map.size(), "q")
    candidate_swaps = set()
    for node in front_layer:
        for virtual in node.qargs:
            physical = current_layout[virtual]
            for neighbor in coupling_map.neighbors(physical):
                virtual_neighbor = current_layout[neighbor]
                swap = sorted([virtual, virtual_neighbor], key=lambda q: _bit_indices[q])
                candidate_swaps.add(tuple(swap))
    return candidate_swaps

def get_layer_set(dag, front_layer, applied_predecessors, EXTENDED_SET_SIZE):
    extended_set = list()
    incremented = list()
    tmp_front_layer = front_layer
    done = False
    i = 1
    while tmp_front_layer and not done:
        if i >= EXTENDED_SET_SIZE:
            done = True
            break
        new_tmp_front_layer = list()
        layi_set = list()
        for node in tmp_front_layer:
            for successor in _successors(node, dag):
                incremented.append(successor)
                applied_predecessors[successor] += 1
                if _is_resolved(applied_predecessors, successor):
                    new_tmp_front_layer.append(successor)
                    if len(successor.qargs) == 2:
                        layi_set.append(successor)
        extended_set.append(layi_set)
        i += 1
        tmp_front_layer = new_tmp_front_layer
    for node in incremented:
        applied_predecessors[node] -= 1
    return extended_set

