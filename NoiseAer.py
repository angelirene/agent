from qiskit.providers.fake_provider import FakeGuadalupe, FakeTokyo, FakeMumbai, FakeWashington
from qiskit.transpiler import CouplingMap
from qiskit_aer import AerSimulator
from qiskit_aer.noise import NoiseModel
from noise.ErrorMatrix import init_error_graph, init_cx_error, init_cx_error_dist


def _check_for_item(lst, name):
    """Search list for item with given name."""
    filtered = [item for item in lst if item.name == name]
    if not filtered:
        return None
    else:
        return filtered[0]

def scaled_backend(backend, scale_fac=1000):
    '''将BackendProperties中门的错误率减少scale_fac倍

    Args:
        backend: Fake backend.
        scale_fac: scaling factor.
    '''

    back_prop = backend.properties()
    gates = back_prop._gates
    #修改_gates属性
    for (gate, gate_qubits) in gates.items():
        for (qubits, parameters) in gate_qubits.items():
            if 'gate_error' in parameters:
                gate_error = parameters['gate_error'][0] / scale_fac
                date = parameters['gate_error'][1]
                parameters['gate_error'] = (gate_error, date)
    #修改gates属性
    for gate in back_prop.gates:
        params = _check_for_item(gate.parameters, 'gate_error')
        if hasattr(params, 'value'):
            params.value = params.value / scale_fac
    return back_prop

def scaled_backend_TG(backend, scale_fac=1000):
    '''将BackendProperties中门的错误率减少scale_fac倍,
    同时将相干时间T1,T2扩大scale_fac倍
    Args:
        backend: Fake backend.
        scale_fac: scaling factor.
    '''

    back_prop = backend.properties()

    #修改gates属性
    gates = back_prop.gates
    for gate in gates:
        params = _check_for_item(gate.parameters, 'gate_error')
        if hasattr(params, 'value'):
            params.value = params.value / scale_fac
    back_prop._gates = {}
    for gate in gates:
        if gate.gate not in back_prop._gates:
            back_prop._gates[gate.gate] = {}
        formatted_props = {}
        for param in gate.parameters:
            value = back_prop._apply_prefix(param.value, param.unit)
            formatted_props[param.name] = (value, param.date)
        back_prop._gates[gate.gate][tuple(gate.qubits)] = formatted_props
    return back_prop
def remove_reset(back_prop):
    '''过滤掉reset，这个操作噪声模拟器不支持
    Args:
        back_prop: Backend properties.
    '''

    #屏蔽gates的reset属性
    gates = back_prop.gates[:]
    for gate in gates:
        if gate.gate == 'reset':
            back_prop.gates.remove(gate)

def get_Noise_sim(fake_name=None, scale_fac=1, thermal_relaxation=True):
    if fake_name == 'Guadalupe':
        fake_backend = FakeGuadalupe()
    elif fake_name == 'Tokyo':
        fake_backend = FakeTokyo()
    elif fake_name == 'mumbai':
        fake_backend = FakeMumbai()
    elif fake_name == 'washington':
        fake_backend = FakeWashington()
    back_prop = scaled_backend_TG(fake_backend, scale_fac)
    remove_reset(back_prop)
    noise_model = NoiseModel.from_backend(fake_backend, readout_error=False, thermal_relaxation=thermal_relaxation)
    noise_sim = AerSimulator(noise_model=noise_model)
    coupling_map = fake_backend.configuration().coupling_map
    coupling_map = CouplingMap(couplinglist=coupling_map)
    len = coupling_map.size()
    cx_error = init_cx_error_dist(back_prop, len)

    return fake_backend, noise_sim, cx_error, coupling_map

