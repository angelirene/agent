from collections import defaultdict
from qiskit.circuit.quantumregister import Qubit
from qiskit import QuantumRegister, QuantumCircuit
import numpy as np
from qiskit.dagcircuit import DAGNode, DAGOpNode
from util.Util import _successors, _is_resolved
from operate.gate_operate import  _apply_gate
from util.Score import get_map_scores
# from operate.layout_operate import get_layer_set
from operate.operate import _obtain_swaps
from qiskit.circuit.library.standard_gates import SwapGate,CXGate
def get_Mapping(cx_error_dist,dag, coupling_map, current_layout, Q, canonical_register, _bit_indices, EXTENDED_SET_SIZE):
    # Q = QuantumRegister(coupling_map.size(), "q")
    fidentity = 1.0
    seed = np.random.randint(0, np.iinfo(np.int32).max)
    rng = np.random.default_rng(seed)
    num_qubits = coupling_map.size()
    mapped_cir = QuantumCircuit(num_qubits)
    num_search_steps = 0
    front_layer = dag.front_layer()
    applied_predecessors = defaultdict(int)
    for _, input_node in dag.input_map.items():
        for successor in _successors(input_node, dag):
            applied_predecessors[successor] += 1
    while front_layer:
        execute_gate_list = []
        for node in front_layer:
            if len(node.qargs) == 2:
                v0, v1 = node.qargs
                if coupling_map.distance(current_layout[Qubit(Q, v0.index)],
                                               current_layout[Qubit(Q, v1.index)]) == 1:
                    execute_gate_list.append(node)
            # else:  # Single-qubit gates as well as barriers are free
            #     execute_gate_list.append(node)
        if execute_gate_list:
            for node in execute_gate_list:
                fidentity *= 1 - cx_error_dist[current_layout[Qubit(Q, v0.index)]][current_layout[Qubit(Q, v1.index)]]
                _apply_gate(mapped_cir, node, current_layout, canonical_register)
                front_layer.remove(node)
                for successor in _successors(node, dag):
                    applied_predecessors[successor] += 1
                    if _is_resolved(applied_predecessors, successor):
                        front_layer.append(successor)
            continue
        swap_candidates = _obtain_swaps(coupling_map, front_layer, current_layout, _bit_indices)
        swap_scores = dict.fromkeys(swap_candidates, 0)
        for swap_qubits in swap_scores:
            trial_layout = current_layout.copy()
            trial_layout.swap(*swap_qubits)
            scores = get_map_scores(coupling_map, front_layer, current_layout, trial_layout,
                                applied_predecessors, dag, EXTENDED_SET_SIZE)
            swap_scores[swap_qubits] = scores
        # best_swaps = [k for k, v in swap_scores.items() if v[1] == 2]
        # if len(best_swaps) == 0:
        #     best_swaps = [k for k, v in swap_scores.items() if v[1] == 1]
        max_score = max(swap_scores.values())
        best_swaps = [k for k, v in swap_scores.items() if v == max_score]
        # print(best_swaps)
        best_swap = rng.choice(best_swaps)
        swap_node = DAGOpNode(op=SwapGate(), qargs=best_swap)
        fidentity *= 1 - cx_error_dist[current_layout[Qubit(Q, v0.index)]][current_layout[Qubit(Q, v1.index)]]
        fidentity *= 1 - cx_error_dist[current_layout[Qubit(Q, v1.index)]][current_layout[Qubit(Q, v0.index)]]
        fidentity *= 1 - cx_error_dist[current_layout[Qubit(Q, v0.index)]][current_layout[Qubit(Q, v1.index)]]
        _apply_gate(mapped_cir, swap_node, current_layout, canonical_register)
        current_layout.swap(*best_swap)
        num_search_steps += 1
        # print(max_score, num_search_steps, best_swap, mapped_cir.count_ops())
    return fidentity / num_search_steps, mapped_cir, current_layout

