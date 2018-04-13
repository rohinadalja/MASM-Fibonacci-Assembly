TITLE Fibonacci Assembly      (fibonacciAssembly.asm)

; Author: Rohin Adalja
; Description: This program calculates fibonacci numbers. First, the program
;   will ask for the user's name and use this name for the hello and goodbye
;   messages.  The program will also prompt the user to enter the number of
;   fibonacci terms they want to see (in the range of 1 to 46). The program
;   will calculate and display the numbers to the screen, and exit with
;   a goodbye message to the user.
;
;  ** Program displays the numbers in aligned columns.
;  ** Program colours each row differently

INCLUDE Irvine32.inc

; Constant definitions for input validation range
	MAX_VAL = 46										; Upper input LIMIT
	MIN_VAL = 1											; Lower input LIMIT

.data
	intro_1			BYTE	"Fibonacci numbers", 0
	author_msg		BYTE	"Programmed by ", 0
	author_name		BYTE	"Rohin Adalja", 0
	intro_EC1		BYTE	"**Program displays the numbers in aligned columns.", 0
	intro_EC2		BYTE	"**Program colors values in each row differently.", 0
	prompt_name		BYTE	"What is your name: ", 0
	user_msg		BYTE	"Hello, ", 0
	prompt_1		BYTE	"Enter the number of Fibonacci terms to be displayed.", 0
	prompt_2		BYTE	"Give the number as an integer in the range [1 to 46].", 0
	prompt_3		BYTE	"How many Fibonacci terms do you want: ", 0

	error			BYTE	"ERROR: The input must be an integer in the range [1 to 46].", 0
	goodbye_1		BYTE	"Goodbye, ", 0
	goodbye_2		BYTE	". Have a great day!", 0

	user_name		DWORD	256 DUP (?)
	user_val		DWORD	?
	temp_val		DWORD	?
	loop_val		DWORD	1

; Spacing for outputting fibonacci numbers in clean, aligned columns.
	EC_space1		BYTE	"     ", 0
	EC_space2		BYTE	"      ", 0
	EC_space3		BYTE	"       ", 0
	EC_space4		BYTE	"        ", 0
	EC_space5		BYTE	"         ", 0
	EC_space6		BYTE	"          ", 0
	EC_space7		BYTE	"           ", 0
	EC_space8		BYTE	"            ", 0
	EC_space9		BYTE	"             ", 0

; For Changing text color to make the program output more readable.
	text_color		DWORD	5		

.code
main PROC

; Display program title, programmer name, features
introduction:
	mov		edx, OFFSET intro_1
	call	WriteString
	call	CrLf
	mov		edx, OFFSET author_msg
	call	WriteString
	mov		edx, OFFSET author_name
	call	WriteString
	call	CrLf
	mov		edx, OFFSET intro_EC1
	call	WriteString
	call	CrLf
	mov		edx, OFFSET intro_EC2
	call	WriteString
	call	CrLf
	call	CrLf

; Get the user's name and display customized hello message
	mov		edx, OFFSET prompt_name
	call	WriteString
	mov		edx, OFFSET user_name
	mov		ecx, 256									; Get upto 256 characters
	call	ReadString
	call	CrLf
	mov		edx, OFFSET user_msg
	call	WriteString
	mov		edx, OFFSET user_name
	call	WriteString
	call	CrLf

; Display program instruction prompts
userInstructions:
	mov		edx, OFFSET prompt_1
	call	WriteString
	call	CrLf
	mov		edx, OFFSET prompt_2
	call	WriteString
	call	CrLf



main ENDP
END main
