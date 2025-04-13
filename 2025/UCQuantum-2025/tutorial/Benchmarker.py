import math
import matplotlib.pyplot as plt

from PIL.EpsImagePlugin import has_ghostscript
from bloqade import qasm2 as qasm2
from bloqade.pyqrack import PyQrack

pi = math.pi

'''# Benchmarker
Run arbitrary circuit under different noise scenarios and error probabilities,
<br> retrieve final state either from simulator or with tomography,
<br> calculate check quantities with noiseless circuit (trace distance, fidelity),
<br> use mpl to visualize error issues.'''

from bloqade.pyqrack.noise.native import PyQrackMethods as methods
class Benchmark:

    def __init__(self, circuit):
        self.circuit = circuit
        self.device = PyQrack()

    def run_circ_noisy(self, qargs, a: float, b:float, c:float):
        methods.apply_pauli_error(interp = self.device, qarg =qargs, px = a, py = 0, pz = b)
        methods.atom_loss_channel(interp = self.device, qarg =qargs )
        return self.device.run(self.circuit)

    def calc_noise_impact(self, qargs, a: float, b:float, c:float):
        state_ideal = self.device.run(self.circuit)[0].ref.sim_reg.out_ket()
        state_noisy = self.run_circ_noisy(self.device, a, b, c)

        # TRACE DISTANCE calculation: 1/2 Tr( |A-B|
        tr = 0
        for i in range(len(state_ideal)):
            tr += abs( abs(state_ideal[i])^2 - abs(state_noisy[i])^2)
        return tr

    def run_benchmark(self, qargs) -> None:
        # intended to graph in matplotlib the trace distance
        def graph(a:float, b:float, c:float):
            return 0
        base_probs = [.01, .05, .1]

        for base_prob in base_probs:
            graph(base_prob, 0, 0)
            graph(0, base_prob, 0)
            graph(0, 0, base_prob)
        graph(.05, .05, .05)
        graph (.1, .1, .1)

        return 0