	SC /200
	HM /002

	@ /200
	Slaoq k =0
	LD /100 ;
	AD /300 ;
	MM /102 ;

	LD /300 ;
	AD /304 ;
	MM /300 ; mem[300] += 2

	LD /202 ;
	AD /304 ;
	MM /202 ; mem [202] += 2

	LD /206 ;
	AD /304 ;
	MM /206 ; mem[206] += 2

	LD /300 ; AC = i
	SB /302 ; AC -= 127
	JZ /002 ; Se AC = 0, termina programa
	JP /202 ; Reinicia subrotina

	@ /300
	Iterador k =1   ;
	Fixo1    k =127 ;
	Fixo2    k =2   ;
