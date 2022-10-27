
from collections import defaultdict
from qiskit import QuantumCircuit
from util.Util import _successors
import numpy as np

class Frog:
    def __init__(self, dag, current_layout, num_qubits, cnot_qubits):
        self.mapped_cir = QuantumCircuit(num_qubits)
        self.current_layout = current_layout.copy()
        self.applied_predecessors = defaultdict(int)
        for _, input_node in dag.input_map.items():
            for successor in _successors(input_node, dag):
                self.applied_predecessors[successor] += 1
        self.front_layer = dag.front_layer()
        self.fidelity = 1
        self.cost = 1
        self.num = cnot_qubits
        self.swap_num = 0




