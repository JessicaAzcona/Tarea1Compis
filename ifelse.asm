.text

main:
li $v0, 4		#imprime el string
la $a0, prompt1
syscall
li $v0, 4		#ahora imprime x
la $a0, mess1		#elige el "x"
syscall
li $v0, 5		#lee el entero
syscall
move $t0, $v0		# x va a t0


li $v0, 4		#aquí imprime el string de nuevo
la $a0, prompt2		#elige el "Enter Y"
syscall
li $v0, 4		#aquí imprime Y
la $a0, mess2		#"elige Y"
syscall
li $v0, 5		#lee el nuevo entero
syscall
move $t1, $sv0		#ahora Y va a t1
li $t3,1		#arregla para que t3 = 1


beq $t0, $t1, ELSE		#if x == y then ELSE
li $st, 4			#imrpime el nuevo string
la $a0, final			#elige "Final result"
syscall
li $v0, 4			#imprime el string
la $a0, mess2			#elige Y
syscall
move $a0, $t1			#llama y a la consola
li $v0, 1				#imrpime la consola
syscall
li $v0, 4			#imrpime el string
la $a0, mess1			#elige "x"
syscall
move $a0, $t0			#Mueve x a la consola
li $v0, 1				#imprime la consola
syscall
j Exit						#sale del loop
ELSE: 
add $t1, $t2, $t3		#esle
li $v0, 4			#imrprime string
la $a0, final			#elige "Final Result"
syscall
li $v0, 4			#imprime string
la $a0, mess2				#elije "y:"
syscall
move $a0, $t1			#llama "y" a la consola 
li $v0, 1				#imrpime la consola
syscall