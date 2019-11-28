#### [QUESTÃO 01]. Apresente: o conjunto de instruções de 8 bits (incluindo a separação de bits) para o seu projeto final; e o número de registradores disponíveis. Adicionalmente, apresente um exemplo de instrução (like MIPS) para cada instrução proposta, conforme tabela abaixo: 

   | Opcode | Nome | Formato | Breve Descrição | Exemplo |   
   |:----------:|:-------------:|:----------:|:-------------:|:--------------:|    
   | 0000 |  ADD  | R |  Soma | add $s0, $s1, ou seja, $s0 := $s0+$s1 |   
   | 0001 |  SUB  | R |  Subtração | sub $s0, $s1, ou seja, $s0 := $s0-$s1 |   
   |  100 |  LW   | I |  Load    | li $s0, 31 |   
   |  010 |  SW   | I |  Store Word   | sw $1,CONST($2)  |
   |  110 |  BEQ  | I |  BranchEqual | beq $1,$2,CONST  |
   |  001 |  JUMP | J |  Jump   | j CONST |

1. Separação de bits para o tipo R: 

   | Opcode | rs | rt | Funct |   
   |:----------:|:-------------:|:----------:|:-------------:|   
   |     3  | 2 | 2 | 1 |      
   |    7-5 | 4-3 | 2-1 | 0 |      
   
   | Opcode | Funct | Instrução |   
   |:----------:|:-------------:|:----------:|   
   |     000  | 0 | add |         
   |     000 |  1 | sub |       
   
2. Separação de bits para o tipo I: 

   | Opcode | rs | rt | Endereço de destino |   
   |:----------:|:-------------:|:----------:|:-------------:|   
   |     3  | 2 | 2 | 1 |      
   |    7-5 |   4-3 | 2-1 | 0 |      
     
   | Opcode | Instrução |   
   |:----------:|:-------------:|   
   |     100  |  lw |         
   |     010 |  sw |         
   |     110 |  beq |       
   
3. Separação de bits para o tipo J: 

   | Opcode | Endereço de destino  |   
   |:----------:|:-------------:|      
   |     3  | 5 |      
   |    7-5 | 4-0 |      
     
   | Opcode | Instrução |   
   |:----------:|:-------------:|   
   |     001  |  Jump |         
   |     010 |  sw |         
   |     110 |  beq |       
   
   
#### [QUESTÃO 02]. Apresente o barramento (datapath) para o seu projeto final, usando a divisão de bits proposto no seu conjunto de instruções de 8 bits.   

![datapath](https://user-images.githubusercontent.com/49700354/65741175-43a57800-e0b9-11e9-8196-e1f767e610eb.png)
