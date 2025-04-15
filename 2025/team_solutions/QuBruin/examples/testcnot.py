import math

from bloqade import qasm2
from kirin.dialects import ilist
from pyqrack import QrackSimulator
from bloqade.pyqrack import PyQrack, reg
from bloqade.noise import native

from collections import Counter


def to_bitstrings(results):
    return Counter(map(lambda result:"".join(map(str, result)), results))



simulation = qasm2.extended.add(native)
#from bloqade.noise import noise_model



@qasm2.extended
def cnot_program():
    qreg = qasm2.qreg(4)
    creg = qasm2.creg(2)
    qasm2.x(qreg[0])
    qasm2.x(qreg[1])
    
    
    for i in range(2):
        qasm2.cx(qreg[i], qreg[i+2])


    qasm2.measure(qreg[2], creg[0]) 
    qasm2.measure(qreg[3], creg[1])
    return creg





@qasm2.extended
def cnot_meas_program():
    qreg = qasm2.qreg(2)
    creg = qasm2.creg(1)
    
    qasm2.h(qreg[0])
    
    qasm2.h(qreg[1])
    qasm2.cx(qreg[1], qreg[0])   
    qasm2.h(qreg[1])    
    
    qasm2.measure(qreg[1], creg[0])
    return creg






device = PyQrack(dynamic_qubits=True, pyqrack_options={"isBinaryDecisionTree": False})
results = device.multi_run(cnot_meas_program, _shots=100)

counts = to_bitstrings(results)

for key, value in counts.items():
    print(key, value)
