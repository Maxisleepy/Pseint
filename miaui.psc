Algoritmo Gato
	Dimensionar Tablero1[3,3]
	Dimensionar tablero2[3,3]
	
	definir fila, columna, opcion1 Como Entero
	
	//inicializar el tablero
	para i <- 1 Hasta 3 Hacer 
		para j <- 1 hasta 3 Hacer
			tablero1[i,j] <- 0
			tablero2[i,j] <- " "
		FinPara
	FinPara
	
	final <- falso
	ganador <- Falso
	turnos <- 0
	
	// menu principal
	Repetir
		Escribir "1. Jugar (empiezas tu)"
		Escribir "2. jugar (Computadora empieza)"
		Escribir "3. Salir"
		leer opcion1
		Segun opcion1 Hacer
			1: 
				Mientras ~ final Hacer
					
					Borrar Pantalla
					Escribir " "
					Escribir "      ||     ||     "
					Escribir "   ",tablero2[1,1],"  ||  ",tablero2[1,2],"  ||  ",tablero2[1,3]
					Escribir "     1||    2||    3"
					Escribir " =====++=====++======"
					Escribir "      ||     ||     "
					Escribir "   ",tablero2[2,1],"  ||  ",tablero2[2,2],"  ||  ",tablero2[2,3]
					Escribir "     4||    5||    6"
					Escribir " =====++=====++======"
					Escribir "      ||     ||     "
					Escribir "   ",tablero2[3,1],"  ||  ",tablero2[3,2],"  ||  ",tablero2[3,3]
					Escribir "     7||    8||    9"
					Escribir " "
					
					si ~ final y turnos<9 Entonces
						// carga
						turnos = turnos +1
						si turnos%2=1 Entonces
							ficha <- "x"; Valor <- j; objetivo <- 1
							Escribir "turno del jugador (X)"
						FinSi
					FinSi
					
					Escribir "Ingrese la Posición (1-9):"
					
					Repetir
						leer posicion
						si posicion<1 o posicion>9 Entonces
							Escribir "Posición incorrecta, ingrese nuevamente: "
							posicion <- 99;
						SiNo
							i <- trunc((posicion-1)/3)+1
							j <- ((posicion-1) MOD 3)+1
							Si tablero1[i,j]<>0 Entonces
								posicion <- 99
								Escribir "Posición incorrecta, ingrese nuevamente: "
							FinSi
						FinSi
					Hasta Que posicion <> 99
					
					tablero1[i,j] <- Valor
					tablero2[i,j] <- Ficha
					
					aux_d1 <- 1; aux_d2 <- 1
					Para i <- 1 hasta 3 hacer
						aux_i <- 1; aux_j <- 1
						aux_d1 <- aux_d1*tablero1[i,i]
						aux_d2 <- aux_d2*tablero1[i,4-i]
						Para j <- 1 hasta 3 hacer
							aux_i <- aux_i*tablero1[i,j]
							aux_j <- aux_j*tablero1[j,i]
						FinPara
						Si aux_i=Objetivo o aux_j=Objetivo Entonces
							HayGanador <- Verdadero
						FinSi
					FinPara
					Si aux_d1=Objetivo o aux_d2=Objetivo Entonces
						HayGanador <- Verdadero
					FinSi
					
					
					
					
					
					
				FinMientras
			2:
			3:
				Escribir "CHAOOOOOOOOOOO"
		FinSegun
		
		
		
		
	Hasta Que opcion1 = 3
	
	
	
	
	

FinAlgoritmo
