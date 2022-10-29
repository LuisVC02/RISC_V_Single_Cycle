# Equipo de practicas 7
# Solución torre de Hanoi
# Alejandro Maciel Ramos
# Luis Roberto Vega Campos


.eqv Discs_Number 3
.eqv N s0

.eqv Tower_1 s1 # Las torres funcionaran como stack
.eqv Tower_2 s2
.eqv Tower_3 s3

.eqv Tower_O a0 # Torre Origen
.eqv Tower_A a1 # Torre Auxiliar
.eqv Tower_D a2 # Torre Destino

.eqv N_a a3 # N atributo

.data
Start_RAM: .word 0

.text
addi N, zero, Discs_Number #Se aplica la cantidad de discos al registro 0

bge zero, N, END

lui Tower_1, %hi(Start_RAM)#Se carga valor de inicio de la RAM en la primer torre

# Valor auxiliar para hacer los arreglos 
addi t0, zero, 4 
mul t0, t0, s0
# --------------------------------------

add Tower_2, Tower_1, t0 #Creacion de segundo arreglo
add Tower_3, Tower_2, t0 #Creacion de tercer arreglo

addi t0, zero, 0

# Bucle para cargar los discos el la primera torre
bucle_de_carga:
# Accion dentro del bucle
	sub t1, N, t0
	sw t1, 0(Tower_1)
	addi t0, t0, 1
	addi Tower_1, Tower_1, 4
# -----------------------
bne t0, N, bucle_de_carga

# Paso de atributos a la funcion
add Tower_O, zero, Tower_1
add Tower_A, zero, Tower_2
add Tower_D, zero, Tower_3
add N_a, zero, N

addi sp, sp, -4
jal ra, Hanoi
# ------------------------------
jal zero, END

# Funcion recursiva de Hanoi ---------------
Hanoi:
	# Guardar en stack el regreso ---
	sw ra, 0(sp)
	addi t0, zero, 1
	# -------------------------------
	# Condicion para ver el caso base
	beq t0, N_a, Basic_case 
	N_mayor_1:
	
	# Primer caso recursivo, va cambiando la torre auxiliar con la de destino y despues va moviendo el valor de origen con destino
	Case_1:
	addi sp, sp, -4
	add t0, Tower_A, zero
	add Tower_A, zero, Tower_D
	add Tower_D, zero, t0
	addi N_a, N_a, -1
	jal ra, Hanoi
	addi N_a, N_a, 1
	add t0, Tower_A, zero
	add Tower_A, zero, Tower_D
	add Tower_D, zero, t0
	
	addi sp, sp, -4
	jal ra, Move1_3
	# -----------------------------------------------------------------------------------------------------------------------------
	
	# Segundo caso recursivo, va cambiando la torre origen con la auxiliar y haciendose de manera recursiva
	Case_2:
	addi sp, sp, -4
	add t0, Tower_A, zero
	add Tower_A, zero, Tower_O
	add Tower_O, zero, t0
	addi N_a, N_a, -1
	
	jal ra, Hanoi
	addi N_a, N_a, 1
	add t0, Tower_A, zero
	add Tower_A, zero, Tower_O
	add Tower_O, zero, t0
	
	jal zero, Return
	# --------------------------------------------------------------------------------------------
	
	# Caso base mencionado en la condicion anterior -----------------------------------------------
	Basic_case:
	addi sp, sp, -4
	jal ra, Move1_3
	# ---------------------------------------------------------------------------------------------
	
	Return:
	lw ra, 0(sp)
	addi sp, sp, 4
	jalr zero, 0(ra)
# FIN de la funcion -----------------------------------------------------------------------------------	

Move1_3:
	# Mueve la torre de origen a torre de destino
	sw ra, 0(sp)
	addi Tower_O, Tower_O, -4
	lw t0, 0(Tower_O)
	sw t0, 0(Tower_D)
	addi Tower_D, Tower_D, 4
	add t0, zero, zero
	sw t0, 0(Tower_O)
	lw ra, 0(sp)
	addi sp, sp, 4
	jalr zero, 0(ra)
	# -----------------------------
	
END:
	add zero, zero, zero
