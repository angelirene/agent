import numpy as np
import retworkx as rx


def init_cx_error(backend_prop):
    '''从backend properties中读取CNOT门的错误率参数值
    :param backend_prop: Backend properties
    :return: cx_error,dict type,key是(i,j),表示CNOT门作用的两个量子位，value存储平均错误率
    '''
    cx_error = dict()
    for gate_info in backend_prop.gates:
        error_val = 0
        if gate_info.gate == 'cx':
            for item in gate_info.parameters:
                if item.name == "gate_error":
                    error_val = item.value
                    break
            cx_error[(gate_info.qubits[0], gate_info.qubits[1])] = error_val
    return cx_error

def init_cx_error_dist(backend_prop,len):
    '''从backend properties中读取CNOT门的错误率参数值
    :param backend_prop: Backend properties
    :return: cx_error,dict type,key是(i,j),表示CNOT门作用的两个量子位，value存储平均错误率
    '''
    cx_error = np.array([[0.0] * len] * len)
    for gate_info in backend_prop.gates:
        error_val = 0
        if gate_info.gate == 'cx':
            for item in gate_info.parameters:
                if item.name == "gate_error":
                    error_val = item.value
                    break
            cx_error[gate_info.qubits[0]][gate_info.qubits[1]] = error_val
    return cx_error


def init_error_graph(backend_prop):
    '''
    根据backend properties 生成CNOT交互的有向图，结点为量子位，
    边为CNOT门，边的权重为相应CNOT门的错误率
    :param back_prop: Backend properties
    :return: cx_error_graph
    '''
    cx_error_graph = rx.PyDiGraph()
    edge_list = []
    for gate_info in backend_prop.gates:
        error_val = 0
        if gate_info.gate == "cx":
            for item in gate_info.parameters:
                if item.name == "gate_error":
                    error_val = item.value
                    break
            edge_list.append((gate_info.qubits[0], gate_info.qubits[1], error_val))
    cx_error_graph.extend_from_weighted_edge_list(edge_list)
    return cx_error_graph

def get_cx_err_dist_mat(cx_error_graph):
    '''
    返回CX error graph的距离矩阵
    :param cx_error_graph:
    :return:
    '''
    # return rx.digraph_floyd_warshall_numpy(cx_error_graph, lambda weight: weight)
    return rx.digraph_floyd_warshall_numpy(cx_error_graph, lambda weight: weight)

