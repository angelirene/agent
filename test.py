import numpy as np

import math
from qiskit import QuantumCircuit, QuantumRegister, transpile
from qiskit.transpiler import Layout
from noise.NoiseAer import get_Noise_sim
from qiskit.converters import circuit_to_dag
from qiskit.circuit import Qubit
import Frog
from Mapping import get_Mapping
from Routing import findActivate_frog, frog_map
from util import get_initial, get_initial_cir
from operate import get_circuits, SimpleCircuit



def sortByNum(map_result):
    return map_result[0]

def test():
    backend, noise_sim, cx_error_dist, coupling_map = get_Noise_sim(fake_name, scale_fac, thermal_relaxation)
    Q = QuantumRegister(coupling_map.size(), "q")
    num_qubits = coupling_map.size()
    canonical_register = QuantumRegister(num_qubits, "q")
    _bit_indices = {bit: idx for idx, bit in enumerate(canonical_register)}
    correct_min, max_distance_cnot, grems = get_initial(cx_error_dist, coupling_map)
    circs, logic_num_qubits = get_circuits(path, num_qubits)
    dag = circuit_to_dag(circs)
    matrix = get_initial_cir(circs, max_distance_cnot)
    cnot_qubits = circs.count_ops()["cx"]
    results = []
    scirs = SimpleCircuit(circs, num_qubits)
    sdag = circuit_to_dag(scirs)
    for _ in range(maxsize1):
        seed = np.random.randint(0, np.iinfo(np.int32).max)
        rng = np.random.default_rng(seed)
        initial_mapping = [i for i in range(len(sdag.qubits))]
        initial_mapping = rng.permutation(initial_mapping)
        initial_layout = Layout({q: sdag.qubits[i] for i, q in enumerate(initial_mapping)})
        for _ in range(maxsize2):
            map_result = get_Mapping(cx_error_dist, sdag, coupling_map, initial_layout, Q, canonical_register, _bit_indices)
            initial_layout = map_result[2].copy()
            results.append(map_result)
    results.sort(key=sortByNum, reverse=True)
    frogs = []
    for k in range(0, wise):
        current_layout = results[k][2]
        frog = Frog(dag, current_layout, num_qubits, cnot_qubits)
        frog = findActivate_frog(frog, dag, coupling_map, canonical_register, cx_error_dist, Qubit, Q)
        frogs.append(frog)
    frog = frog_map(frogs, dag, coupling_map, canonical_register, _bit_indices, cx_error_dist, m, wise//m, wise, grems, matrix, max_distance_cnot, EXTENDED_SET_SIZE, Qubit, Q)



if __name__ == "__main__":
    path = "circuit/qft_10.qasm"
    fake_name = 'mumbai'
    scale_fac = 1
    thermal_relaxation = True
    EXTENDED_SET_SIZE = 1
    maxsize1 = 10
    maxsize2 = 5
    wise = 10
    m = 5
    test()