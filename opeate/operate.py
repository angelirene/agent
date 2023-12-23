from util import _successors, _is_resolved
from qiskit import QuantumCircuit
import copy

# This is a function to get a gate from current layout.
def _transform_gate_for_layout(op_node, layout, device_qreg):
    """Return node implementing a virtual op on given layout."""
    mapped_op_node = copy(op_node)
    premap_qargs = op_node.qargs
    mapped_qargs = map(lambda x: device_qreg[layout[x]], premap_qargs)
    mapped_op_node.qargs = list(mapped_qargs)
    return mapped_op_node

# This is a function to apply a gate.
def _apply_gate( mapped_cir, node, current_layout, canonical_register):
    new_node = _transform_gate_for_layout(node, current_layout, canonical_register)
    if new_node.op.name == 'cx':
        v0, v1 = new_node.qargs
        mapped_cir.cx(v0.index, v1.index)
    elif new_node.op.name == 'swap':
        v0, v1 = new_node.qargs
        mapped_cir.swap(v0.index, v1.index)

def _apply_gate_frog( frog, node, canonical_register, cx_error_dist):
    new_node = _transform_gate_for_layout(node, frog.current_layout, canonical_register)
    if new_node.op.name == 'cx':
        v0, v1 = new_node.qargs
        frog.fidelity *= (1 - cx_error_dist[v0.index][v1.index])
        frog.num -= 1
        frog.mapped_cir.cx(v0.index, v1.index)
    elif new_node.op.name == 'swap':
        v0, v1 = new_node.qargs
        frog.fidelity *= (1 - cx_error_dist[v0.index][v1.index])
        frog.fidelity *= (1 - cx_error_dist[v1.index][v0.index])
        frog.fidelity *= (1 - cx_error_dist[v0.index][v1.index])
        frog.mapped_cir.cx(v0.index, v1.index)
        frog.mapped_cir.cx(v1.index, v0.index)
        frog.mapped_cir.cx(v0.index, v1.index)
    return frog

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

def get_circuits(path, num_qubits):
    circs = QuantumCircuit(num_qubits)
    circuits = QuantumCircuit.from_qasm_file(path)
    logic_num_qubits = circuits.qubits[0].register.size
    for node in circuits:
        # print(node)
        if node.operation.name == 'cx':
            v0, v1 = node.qubits
            circs.cx(v0.index, v1.index)
    return circs, logic_num_qubits


def SimpleCircuit(ncir,num_qubits):
    '''Return Reduced Circuit containing only [name, [p,q]], e.g., ['cx', [0,2]] '''
    nsc = []
    simple_mirror_qc = QuantumCircuit(num_qubits)
    for node in ncir:
        if node[0].name != 'cx': continue
        addset(nsc, node[1])
    for node in nsc:
        simple_mirror_qc.cx(node[0], node[1])
    for node in reversed(nsc):
        simple_mirror_qc.cx(node[0], node[1])
    return simple_mirror_qc

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