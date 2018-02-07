.data
prompt: .asciiz "Enter two numbers and I'll show you the sum,difference,product,quotient and remainder \n"
message1: .asciiz "\n Enter the first number: "
message2: .asciiz "\n Enter the second number: "
addition: .asciiz "\n The addition of the above two numbers is: "
subtraction: .asciiz "\n The subtraction of the above two numbers is: "
multiplication: .asciiz "\n The product of the above two numbers is: "
division: .asciiz "\n The quotient of the above two numbers is : "
remainder: .asciiz "\n The remainder of the above two numbers is : "
goodbye: .asciiz "\n Good bye "

.text

#printing the prompt
li $v0,4
la $a0,prompt
syscall

#printing the message 1

li $v0,4
la $a0,message1
syscall

#Taking the input from the user

li $v0,5
syscall

# Since the input is stored in v0 we are moving the value to t0
move $t0,$v0

#printing the message 2

li $v0,4
la $a0,message2
syscall

#Taking the input from the user

li $v0,5
syscall

# Since the input is stored in v0 we are moving the value to t1
move $t1,$v0

#printing the addition

li $v0,4
la $a0,addition
syscall


# Adding of two numbers
add $t2,$t0,$t1


#dispalying the addition value
li $v0,1
move $a0,$t2
syscall


#print the subtraction

li $v0,4
la $a0,subtraction
syscall

#subtraction of two numbers
sub $t3,$t0,$t1

#displaying the subtraction value
li $v0,1
move $a0,$t3
syscall

#print the multiplication

li $v0,4
la $a0,multiplication
syscall

#multiplication of two numbers
mul $t4,$t0,$t1

#displaying the multiplication value
li $v0,1
move $a0,$t4
syscall

#print the division

li $v0,4
la $a0,division
syscall

#division of two numbers
div $t5,$t0,$t1

#displaying the division value
li $v0,1
move $a0,$t5
syscall

#print the remainder

li $v0,4
la $a0,remainder
syscall

#remainder of two numbers
rem $t6,$t0,$t1

#displaying the remainder value
li $v0,1
move $a0,$t6
syscall

#Good bye statement 

li $v0,4
la $a0,goodbye
syscall







