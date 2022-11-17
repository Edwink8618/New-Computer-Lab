#Edwin Koroma
#Lab 1

			.data
prompt:			.asciiz				"My name is Edwin Koroma"
prompt1:		.asciiz				"\n Enter number of Computers Purchase: "
prompt2:		.asciiz				"\n Enter number of Printer Purchase: "
prompt3:		.asciiz				"\n Enter number of Software purchase: "
result:			.asciiz				" The sum of computer is: "
result1:		.asciiz				" The sum of printer is: "
result2:		.asciiz				" The sum of software is: "
result3:		.asciiz				"\n The sum of boxlight and large monitor is: "
result4:		.asciiz				"\n The sum of everything is: "
			
			.globl				main
			.text
			
main:
	#Output for my name to be printed out
	li			$v0, 4				#To print out my name
	la			$a0, prompt			#To print my name
	syscall							#End program
	
	#The cost of each of the services
			
	li 			$t2, 495			# cost of computer in $t2
	li 			$t3, 355			# cost of software in $t3
	li 			$t4, 325			# cost of printer in $t4
	li 			$t5, 8993			# cost of projection setup with boxlight ($6599 boxlight + 6 monitors * $399)
	li 			$t6, 0				# this is the total to be added on too
    	
	#Input for the number of Computers to be purchase
	li			$v0, 4				#To print number of computers to be purchase
	la			$a0, prompt1			#This is link to prompt1 above to what it should say
	syscall							#End program
	
	li			$v0, 5				#Lets user input the amount of computer purchasing
	syscall							#End of program
	move			$t0, $v0
	
	# Printing the total cost for computers
	
	li			$v0, 4				# Print out string
	la			$a0, result			# String is added to the address
	syscall							# print out the string
	
	li 			$v0, 1				# Print out for a int
	mul 			$a0, $t2, $t0			# cost of computers, cost of each computer and number of computers
	syscall							# End of program for this part
	
	add 			$t6, $t6, $a0			# Add to the previous total
	
	#Input for number of Printers to be purchase
	li 			$v0, 4				#To print number of Printer to be Purchase
	la			$a0, prompt2			#This is link to prompt2 above to what it should say
	syscall							#End of program
	
	li 			$v0, 5				#user input the amount of printer
	syscall							#Ends program
	move			$t1, $v0
	
	# Printing the total cost for Printers
	
	li			$v0, 4				# print out a string
	la			$a0, result1			# string is loaded into address
	syscall							# print the string
	
	li 			$v0, 1				# syscall for print int
	mul	 		$a0, $t4, $t0			# cost of computers, each computer and number of computers
	syscall							# End program
	
	add 			$t6, $t6, $a0			# Add to previous total
	
	#Input for number of Software to be purchase
	li 			$v0, 4				#To print number of Printer to be Purchase
	la			$a0, prompt3			#This is link to prompt3 above to what it should say
	syscall							#End of program
	
	li 			$v0, 5				#User input the amount of Software
	syscall							#Ends program
	move			$t2, $v0
	
	# Calculation for cost for software
	
	li			$v0, 4				# Print out a string
	la			$a0, result2			# String is loaded into address
	syscall							# End program
	
	li 			$v0, 1				# Printing out a integar
	mul 			$a0, $t3, $t0			# cost of software, each software and number of computers
	syscall							# End program
	
	add 			$t6, $t6, $a0			# Adding to previous total
	
	# Cost of projection and boxlight
	
	li			$v0, 4				# Printing out the string
	la			$a0, result3			# The address of the string
	syscall							#End program
	
	li 			$v0, 1				# printing out int
	move			$a0, $t5			# $t5 is the cost from above constant
	syscall							#End program
	
	add 			$t6, $t6, $a0			# Adding to the previous totals
    	
    	# Total cost of the new lab
	
	li			$v0, 4				# For printing out the string
	la			$a0, result4			# The address of the string
	syscall
	
	li 			$v0, 1				# For printing int
	move		 	$a0, $t6			# The result of the lab from other registers
	syscall
    	
	# Exiting program
	li 			$v0, 10				#Terminates program
	syscall							#End Program
    	
    	
    	
