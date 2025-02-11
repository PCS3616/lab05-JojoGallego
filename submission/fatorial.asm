	SC /200 ; Call subroutine
	HM /002  ; Stop program

	@ /100
	N       k /0006 
	RES     k /0001
	I	k =1

	@ /200
	SLAOQ   k =0
	LD N    ; AC = N 
	JZ /212 ; If (N==0), jump to 0x212, to end routine
	ML RES  ; Else, AC *= mem[RES]
	MM RES  ; mem[RES] = AC
	LD N    ; AC = N
	SB I    ; AC-= 1
	MM N    ; mem[100] = AC
	JP /202 ; Jump to 0x202, and repeat it all 
	RS /200 ; End routine
