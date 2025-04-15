
from bloqade import qasm2
from kirin.dialects import ilist
from pyqrack import QrackSimulator
from bloqade.pyqrack import PyQrack, reg
from bloqade.noise import native



from bloqade.qasm2.emit import QASM2 # the QASM2 target
from bloqade.qasm2.parse import pprint # the QASM2 pretty printer


from collections import Counter



from bloqade.qasm2.rewrite.native_gates import RydbergGateSetRewriteRule
from kirin import ir
from kirin.rewrite import Walk
from bloqade.qasm2.passes import UOpToParallel, QASM2Fold



@ir.dialect_group(qasm2.extended)
def extended_opt(self):
    native_rewrite = Walk(RydbergGateSetRewriteRule(self)) # use Kirin's functionality to walk code line by line while applying neutral-atom gate decomposition as defined in Bloqade
    parallelize_pass = UOpToParallel(self) # review the code and apply parallelization using a heuristic
    agg_fold = QASM2Fold(self) # supports parallelization by unfolding loops to search for parallelization opportunities

    # here we define our new compiler pass
    def run_pass(
        kernel: ir.Method,
        *,
        fold: bool = True,
        typeinfer: bool = True,
        parallelize: bool = False,
    ):
        assert qasm2.extended.run_pass is not None
        qasm2.extended.run_pass(kernel, fold=fold, typeinfer=typeinfer) # apply the original run_pass to the lowered kernel
        native_rewrite.rewrite(kernel.code) # decompose all gates in the circuit to neutral atom gate set

        # here goes our parallelization optimizer; the order of the commands here matters!
        if parallelize:
            agg_fold.fixpoint(kernel)
            parallelize_pass(kernel)

    return run_pass



def to_bitstrings(results):
    return Counter(map(lambda result:"".join(map(str, result)), results))









def surface_code_d2_transversal_cnot(n:int):
    
    @extended_opt
    def add_X_syndrome_circuit(qreg: qasm2.QReg,creg:qasm2.CReg,ndataqubits:int,stabindex:int,index_tuple:tuple[int, ...]):
        qasm2.h(qreg[ndataqubits+stabindex])
        for i in range(len(index_tuple)):
            qasm2.cx(qreg[ndataqubits+stabindex],qreg[index_tuple[i]])
        qasm2.h(qreg[ndataqubits+stabindex])
        qasm2.measure(qreg[ndataqubits+stabindex],creg[stabindex])



    @extended_opt
    def add_Z_syndrome_circuit(qreg: qasm2.QReg,creg:qasm2.CReg,ndataqubits:int,stabindex:int,index_tuple:tuple[int, ...]):
        for i in range(len(index_tuple)):
            qasm2.cx(qreg[index_tuple[i]],qreg[ndataqubits+stabindex])
        qasm2.measure(qreg[ndataqubits+stabindex],creg[stabindex])
        
        
    @extended_opt
    def surface_depth_program():       
        qreg = qasm2.qreg(2*2*3**2-2)
        creg = qasm2.creg(2*3**2-2+3)
    
    
        for i in range(2*3**2-2):
            qasm2.reset(qreg[i])  
        
        '''
        Logical X gate
        '''
        qasm2.x(qreg[9])
        qasm2.x(qreg[10])
        qasm2.x(qreg[11])        
    

        '''
        Logical transversal CNOT gate
        '''
        for i in range(9):
            qasm2.cx(qreg[i],qreg[i+9])


        '''
        Syndrome measurement on first logical qubit
        '''
        add_X_syndrome_circuit(qreg,creg,18,0,(0,1,3,4))
        add_X_syndrome_circuit(qreg,creg,18,1,(3,4,6,7))
        
        add_X_syndrome_circuit(qreg,creg,18,2,(1,2))    
        add_X_syndrome_circuit(qreg,creg,18,3,(7,8))    
        
        add_Z_syndrome_circuit(qreg,creg,18,4,(1,2,4,5))
        add_Z_syndrome_circuit(qreg,creg,18,5,(4,5,7,8))
        
        
        add_Z_syndrome_circuit(qreg,creg,18,6,(0,3))    
        add_Z_syndrome_circuit(qreg,creg,18,7,(2,5))             

        '''
        Syndrome measurement on second logical qubit
        '''
        add_X_syndrome_circuit(qreg,creg,18,8,(9,10,12,13))
        add_X_syndrome_circuit(qreg,creg,18,9,(12,13,15,16))
        
        add_X_syndrome_circuit(qreg,creg,18,10,(10,11))    
        add_X_syndrome_circuit(qreg,creg,18,11,(16,17))    
        
        add_Z_syndrome_circuit(qreg,creg,18,12,(10,11,13,14))
        add_Z_syndrome_circuit(qreg,creg,18,13,(13,14,16,17))
        
        
        add_Z_syndrome_circuit(qreg,creg,18,14,(9,12))    
        add_Z_syndrome_circuit(qreg,creg,18,15,(11,14))  

        '''
        Measuring the logical qubit
        '''
        qasm2.measure(qreg[9],creg[16])
        qasm2.measure(qreg[10],creg[17])
        qasm2.measure(qreg[11],creg[18])      
        return surface_depth_program
        

        

    
  
  
from bloqade.qasm2.passes import NoisePass
from bloqade.noise import native  
    
if __name__ == '__main__':


    kernel = surface_code_d2_transversal_cnot(2)

    # add noise
    noise_kernel = kernel.similar()
    extended_opt.run_pass(noise_kernel, parallelize=True)
    NoisePass(extended_opt)(noise_kernel)

    noise_kernel = noise_kernel.similar(extended_opt.add(native))

    device = PyQrack(dynamic_qubits=True, pyqrack_options={"isBinaryDecisionTree": False})
    results = device.multi_run(noise_kernel, _shots=100)


    counts = to_bitstrings(results)


    success=0
    for key, value in counts.items():
        print(key, value)
        if((int(key[-1])+ int(key[-2])+int(key[-3]))%2==1):
            success+=value
    print("Success rate is "+success/10)

    
    

    

    