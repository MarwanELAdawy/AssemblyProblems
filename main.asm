INCLUDE Irvine32FCIS.inc ;DO NOT CHANGE THIS LINE

;###################################################################################;#
;							AUTOGRADER RELATED .DATA								;#
;				DO NOT MODIFY, DELETE NOR ADD ANY LINE HERE							;#
;###################################################################################;#
.data																				;#
																					;#
	prmpt byte "Please enter question number 1, 2, 3, 4, 5, 6, 7 or enter 0 to exit:", 0		;#
	wrongChoice byte "Please enter a valid question number!", 0						;#
	tmpstr byte 5 dup(?), 0															;#
;###################################################################################;#
																					
;#######################################################							
;				STUDENTS  .DATA	SECTION     		   #							
;		   THIS SECTION MADE FOR STUDENTS' DATA        #							
;      YOU CAN MODIFY, ADD OR EDIT TO THIS SECTION     #							
;#######################################################							
																					
.data																				
;#########################Q1 DATA##############################	
counter dword ?
;#########################Q1 DATA##############################	
																					
;#########################Q2 DATA##############################	
element1 dword 0
element2 dword 1
;#########################Q2 DATA##############################		

;#########################Q3 DATA##############################
N byte"Please, Enter N:",0
K byte"Please, Enter K:",0
v byte"Please, Enter Values:",0
temp1 dword 0
temp2 dword 0
temp5 dword 0
arr dword 5 dup(0)
;#########################Q3 DATA##############################		

;#########################Q4 DATA##############################	
str5 byte "Please, enter original matrix values:",0
s1 byte "The original matrix:",0
mat1 byte 6 dup(?)
mat2 byte 6 dup(?)
cooo dword 1
coooo dword 2
cooooo dword 5
;#########################Q4 DATA##############################		

;#########################Q5 DATA##############################
EK byte "Enter K: ",0
EN byte "Enter N: ",0
EW byte "Enter W: ",0
KV dword 0
NV dword 0
WV dword 0
count dword 0
;#########################Q5 DATA##############################

;#########################Q6 DATA##############################
element11 dword 2
element22 dword 1
;#########################Q6 DATA##############################		
													
;#########################Q7 DATA##############################	
arr1 dword 20 dup(?)
v1 dword 0
v2 dword 0
v3 dword 0
v4 dword 0
;#########################Q7 DATA##############################		
													
														
														
.code													
														
;#######################################################
;#DO NOT MODIFY, DELETE NOR ADD ANY LINE IN THIS METHOD#
;#######################################################
MAIN PROC											  ;#
	PROGLOOP:										  ;#
		MOV EDX, OFFSET PRMPT						  ;#
		CALL WRITESTRING							  ;#
		CALL CRLF									  ;#
		CALL READINT								  ;#
		CMP EAX, 0									  ;#
		JE FIN										  ;#
													  ;#
		CMP EAX, 1									  ;#
		JNE _Q2										  ;#
		CALL Q1										  ;#
		JMP CONT									  ;#
													  ;#
		_Q2:										  ;#
		CMP EAX, 2									  ;#
		JNE _Q3									      ;#
		CALL Q2										  ;#
		JMP CONT									  ;#
													  ;#
		_Q3:										  ;#
		CMP EAX, 3									  ;#
		JNE _Q4										  ;#
		CALL Q3										  ;#
		JMP CONT									  ;#
													  ;#
		_Q4:										  ;#
		CMP EAX, 4									  ;#
		JNE _Q5										  ;#
		CALL Q4										  ;#
		JMP CONT									  ;#
													  ;#
		_Q5:										  ;#
		CMP EAX, 5									  ;#
		JNE _Q6 									  ;#
		CALL Q5										  ;#
		JMP CONT									  ;#
													  ;#
		_Q6:										  ;#
		CMP EAX, 6									  ;#
		JNE _Q7										  ;#
		CALL Q6										  ;#
		JMP CONT									  ;#
													  ;#
		_Q7:										  ;#
		CMP EAX, 7									  ;#
		JNE WRONG									  ;#
		CALL Q7										  ;#
		JMP CONT									  ;#
													  ;#
		WRONG:										  ;#
		MOV EDX, OFFSET wrongChoice					  ;#
		CALL WRITESTRING							  ;#
		CALL CRLF									  ;#
													  ;#
		CONT:										  ;#
		JMP PROGLOOP								  ;#
													  ;#
		FIN:										  ;#
													  ;#
	EXIT											  ;#
MAIN ENDP											  ;#
;#######################################################

;
;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Remove Call Panic
; Question one procedure here
;----------------------------------------------------------
Q1 PROC
mov edx,1
mov eax,0
mov ebx,1
call readdec
mov ecx,eax
l1:
	mov counter,ecx
	mov ecx,ebx
l2:
	mov eax,edx
	call writedec
	inc edx
	mov al,' '
	call writechar
	loop l2
	inc ebx
	call crlf
	mov ecx,counter
	loop l1
RET
Q1 ENDP


;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Remove Call Panic
; Question two procedure here
;----------------------------------------------------------
Q2 PROC
	call readdec
	mov ecx,eax
	dec ecx
	mov eax,0
	call writedec
	call crlf
	mov eax,1
	call writedec
	call crlf
	mov eax,0
	l1:
		mov eax,element1
		add eax,element2
		mov edi,element2
		mov element1,edi
		mov element2,eax
		call writedec
		call crlf
		mov eax,0
	loop l1
		RET
Q2 ENDP
;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Remove Call Panic
; Question three procedure here
;----------------------------------------------------------
Q3 PROC
	mov ecx,2
	l1:

		mov temp5,ecx
		mov edx,offset N
		call writestring
		call readdec
		mov temp1,eax
		mov edx,offset K
		call writestring
		call readdec
		mov temp2,eax
		mov edx,offset v
		call writestring
		mov ecx,temp2
		mov ebx,offset arr
		l2:
			call readdec
			mul temp1
			mov [ebx],eax
			add ebx,4
		loop l2
		mov ecx,temp2
		mov ebx,offset arr
		l3:
			mov eax,[ebx]
			call writedec
			mov al," "
			call writechar
			add ebx,4
		loop l3
		call crlf
		mov ecx,temp5
	loop l1
	RET
Q3 ENDP

;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Remove Call Panic
; Question four procedure here
;----------------------------------------------------------
Q4 PROC
	mov esi,offset mat1
	mov edi,offset mat2
	mov edx,offset str5
	call writestring
	call crlf
	mov ecx,6
	maro:
		call readdec
		mov[esi],al
		inc esi
	loop maro
	mov esi,offset mat1
	mov edx,offset s1
	call writestring
	call crlf
	mov ecx,3
	maro2:
		mov ebx,ecx
		mov ecx,cooo
		maro3:
			movzx eax,byte ptr[esi]
			call writedec
			mov al,' '
			call writechar
			inc esi
		loop maro3
		inc cooo
		mov ecx,ebx
		call crlf
	loop maro2
	mov esi,offset mat1
	mov edi,offset mat2
	mov edx,offset s1
	call writestring
	call crlf
	mov cooo,1
	mov ebx,ecx
	movzx eax,byte ptr[esi]
	mov [edi],al
	mov ecx,2
	mov esi,offset mat1
	mov edi,offset mat2
	maro4:
		mov edx,coooo
		movzx eax,byte ptr[esi+edx]
		mov ebx,cooo
		mov [edi+ebx],al
		inc cooo
		dec coooo
	loop maro4
	mov cooo,3
	mov ecx,3
	mov esi,offset mat1
	mov edi,offset mat2
	maro5:
		mov edx,cooooo
		movzx eax,byte ptr[esi+edx]
		mov ebx,cooo
		mov [edi+ebx],al
		inc cooo
		dec cooooo
	loop maro5
	mov esi,offset mat1
	mov edi,offset mat2
	mov cooo,1
	mov ecx,3
	maro6:
		mov ebx,ecx
		mov ecx,cooo
		maro7:
			movzx eax,byte ptr[edi]
			call writedec
			mov al,' '
			call writechar
			inc edi
		loop maro7
		inc cooo
		mov ecx,ebx
		call crlf
	loop maro6
RET
Q4 ENDP

;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Remove Call Panic
; Question five procedure here
;----------------------------------------------------------
Q5 PROC
	mov edx , offset EK
	call writestring
	call readdec
	mov KV,eax
	mov edx , offset EN
	call writestring
	call readdec
	mov NV,eax
	mov edx , offset EW
	call writestring
	call readdec
	mov WV,eax
	mov ecx,WV 
	l1:
		add count,ecx
	loop l1
	mov eax,0
	add eax,count
	add eax,count
	sub eax,NV
	call writeint 
	call crlf
	RET
Q5 ENDP

;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Remove Call Panic
; Question six procedure here
;----------------------------------------------------------
Q6 PROC
	call readint
	mov ecx,eax
	sub ecx,2
	mov eax,2
	call writedec
	mov al , ' '
	call writechar
	mov eax,1
	call writedec
	mov al , ' '
	call writechar
	mov eax,0
	l1:
		mov eax,element11
		add eax,element22
		mov edi,element22
		mov element11,edi
		mov element22,eax
		call writedec
		mov al,' '
		call writechar
		mov eax,0
	loop l1
	call crlf
	RET
Q6 ENDP
;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Remove Call Panic
; Question seven procedure here
;----------------------------------------------------------
Q7 PROC
	call readdec
	mov ecx,eax
	mov v1,eax
	mov ebx,offset arr1
	l1:
		call readdec
		mov [ebx],eax
		add ebx,4
	loop l1
	mov ebx,offset arr1
	mov ecx,v1
	mov eax,v1
	add eax,1
	mov v3,eax
	l2:
		mov edx,ecx
		mov eax,v3
		mov v2,eax
		sub v2,edx
		mov ecx,v2
		l3:
			mov eax,[ebx]
			add v4,eax
		loop l3
		add ebx,4
		mov ecx,edx
	loop l2
	mov eax,v4
	call writedec
	call crlf
	RET
Q7 ENDP

END MAIN












