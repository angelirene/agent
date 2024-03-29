import random
from copy import copy
from operate import _apply_gate
from qiskit.dagcircuit import DAGNode, DAGOpNode
from util import _successors, _is_resolved
from operate import _apply_gate_frog
from score import get_scores
from qiskit.circuit.library.standard_gates import SwapGate,CXGate
from operate import _obtain_swaps
from score import get_frog_cost

# This is a function to
def findActivate_frog(frog, dag, coupling_map, canonical_register, cx_error_dist, Qubit, Q):
    # Q = QuantumRegister(coupling_map.size(), "q")
    while frog.front_layer:
        execute_gate_list = []
        # Remove as many immediately applicable gates as possible
        for node in frog.front_layer:
            if len(node.qargs) == 2:
                v0, v1 = node.qargs
                if coupling_map.distance(frog.current_layout[Qubit(Q, v0.index)],
                                               frog.current_layout[Qubit(Q, v1.index)]) == 1:
                    node.qargs = Qubit(Q, v0.index), Qubit(Q, v1.index)
                    execute_gate_list.append(node)
            else:  # Single-qubit gates as well as barriers are free
                execute_gate_list.append(node)
        if execute_gate_list:
            for node in execute_gate_list:
                _apply_gate_frog(frog.mapped_cir, node, frog.current_layout, canonical_register)
                frog.front_layer.remove(node)
                # print("front_layer.remove(node)", node.qargs)
                for successor in _successors(node, dag):
                    frog.applied_predecessors[successor] += 1
                    if _is_resolved(frog.applied_predecessors, successor):
                        frog.front_layer.append(successor)
            continue
        else:
            break
    return frog

def updateActivate_frog(frog, dag, coupling_map, canonical_register, cx_error_dist, Qubit, Q):
    execute_gate_list = []
    # Remove as many immediately applicable gates as possible
    for node in frog.front_layer:
        if len(node.qargs) == 2:
            v0, v1 = node.qargs
            if coupling_map.distance(frog.current_layout[v0], frog.current_layout[v1]) == 1:
                node.qargs = Qubit(Q, v0.index), Qubit(Q, v1.index)
                execute_gate_list.append(node)
        else:  # Single-qubit gates as well as barriers are free
            execute_gate_list.append(node)
    if execute_gate_list:
        for node in execute_gate_list:
            _apply_gate_frog(frog.mapped_cir, node, frog.current_layout, canonical_register)
            frog.front_layer.remove(node)
            for successor in _successors(node, dag):
                frog.applied_predecessors[successor] += 1
                if _is_resolved(frog.applied_predecessors, successor):
                    frog.front_layer.append(successor)
    return frog


def sortByNum(frog):
    return frog.cost
def frog_map(frogs, dag, coupling_map, canonical_register, _bit_indices, cx_error_dist, m, n, wise, grems, matrix, max_distance_cnot, EXTENDED_SET_SIZE, Qubit, Q):
    flag = True
    item = 0
    while flag:
        flag = False
        item += 1
        for frog in frogs:
            if len(frog.front_layer) != 0:
                flag = True
                swap_candidates = _obtain_swaps(coupling_map, frog.front_layer, frog.current_layout, _bit_indices)
                swap_scores = dict.fromkeys(swap_candidates, 0)
                for swap_qubits in swap_scores:
                    trial_layout = frog.current_layout.copy()
                    trial_layout.swap(*swap_qubits)
                    scores = get_scores
                    swap_scores[swap_qubits] = scores(coupling_map, frog, trial_layout)
                best_swaps = [k for k, v in swap_scores.items() if v >= 0]
                best_swap = random.choice(best_swaps)
                swap_node = DAGOpNode(op=SwapGate(), qargs=best_swap)
                _apply_gate_frog(frog.mapped_cir, swap_node, frog.current_layout, canonical_register)
                frog.current_layout.swap(*best_swap)
                frog = updateActivate_frog(frog, dag, coupling_map, canonical_register, cx_error_dist, Qubit, Q)
                frog = findActivate_frog(frog, dag, coupling_map, canonical_register, cx_error_dist, Qubit, Q)
                frog.cost = get_frog_cost(frog.fidelity, frog.mapped_cir.depth() + frog.num * max_distance_cnot, frog.mapped_cir.count_ops()["cx"], grems, matrix)
               
        if item > EXTENDED_SET_SIZE:
            item = 0
            continue
        frogs.sort(key=sortByNum, reverse=True)
        if len(frogs[0].front_layer) == 0:
            flag = False
            break
        for i in range(0, n):
            mini = n * (m - 1) + i if wise % n <= i else n * m + i
            x = random.random() * (frogs[i].mapped_cir.count_ops()["cx"] - frogs[mini].mapped_cir.count_ops()["cx"]) * (frogs[mini].cost / frogs[i].cost)
            # print(x, mini, i, frogs[mini].mapped_cir.count_ops()["cx"], frogs[i].mapped_cir.count_ops()["cx"], frogs[mini].cost, frogs[i].cost)
            if x > 1:
                frogs[mini].front_layer = frogs[i].front_layer.copy()
                frogs[mini].mapped_cir = frogs[i].mapped_cir.copy()
                frogs[mini].current_layout = frogs[i].current_layout.copy()
                frogs[mini].applied_predecessors = frogs[i].applied_predecessors.copy()
                frogs[mini].cost = frogs[i].cost
                frogs[mini].num = frogs[i].num
                frogs[mini].fidelity = frogs[i].fidelity
    return frogs[0]
