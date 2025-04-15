import math

from bloqade import qasm2
from kirin.dialects import ilist
from pyqrack import QrackSimulator
from bloqade.pyqrack import PyQrack, reg
from bloqade.noise import native



simulation = qasm2.extended.add(native)
#from bloqade.noise import noise_model



@qasm2.extended
def xgate_program():
    qreg = qasm2.qreg(1)
    qasm2.x(qreg[0])
    return qreg


@simulation
def xgate_with_noise():
    qreg = qasm2.qreg(1)
    qasm2.x(qreg[0])
    native.pauli_channel([qreg[0]], px=0.1, py=0.4, pz=0.3)
    return qreg



@qasm2.extended
def xgate_measure_program():
    qreg = qasm2.qreg(1)
    qasm2.x(qreg[0])
    creg = qasm2.creg(1)
    qasm2.measure(qreg[0], creg[0])    
    return creg


@qasm2.extended
def hgate_program():
    qreg = qasm2.qreg(1)
    qasm2.h(qreg[0])
    return qreg



target = PyQrack(1)
q = target.run(xgate_with_noise)
assert isinstance(q, reg.PyQrackReg)
assert isinstance(q.sim_reg, QrackSimulator)
out = q.sim_reg.out_ket()
print(out)
#print(q[0])


