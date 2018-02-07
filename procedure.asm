.data
message: .asciiz "Enter your Name: \n"
prompt: .asciiz "Letter Frequency Analysis by, "
userinput: .space 110
userstring: .space 110
string: .asciiz "Enter a String to Analyze: \n"
exit: .asciiz "The program not completed \n"


.text

main:

jal setup 
jal analyze
jal results


# Ending of the main function
li $v0,10
syscall



# Procedure setup

setup:
# Outputting a statement 
li $v0,4
la $a0,message
syscall

# inputing the user data
li $v0,8
la $a0,userinput
li $a1,110
syscall

# Printing the prompt
li $v0,4
la $a0,prompt
syscall

# Displaying the statement
li $v0,4
la $a0,userinput
syscall 

# Prompting the user to input the string
li $v0,4
la $a0,string
syscall
 
# Taking the user entered string
li $v0,8
la $a0,userinput
li $a2,110
syscall

# Returning the proedure value
jr $ra

# End of the setup Program
li $v0,10
syscall



#Procedure analyze

analyze:
li $t0,$zero,0
blt $t0,$t1,exit
li $t0,$t0,1
bne $t0,$t1,result

li $v0,10
syscall


#Procedure result

result:

li $v0,4
la $a0,analyze
syscall

li $v0,10
syscall









