Algoritmo gato
	
turno<-1;
tiros<-1;
Dimensionar tablero[3,3]
	
definir fila, columna, opcion1 Como Entero
	
//inicializar el tablero
escribir "HOLAAAAAAAAAAAAAAAAAAAA"

Para i<-1 Hasta 3 Con Paso 1
	Para j<-1 Hasta 3 Con Paso 1
		tablero[i,j]<-"";
	FinPara
FinPara
	
Mientras tiros<-9 Hacer
	Escribir "Turno del jugador",turno," /nIndique el renglon ( 1-3 ): ";
	Leer r;
	Escribir "Indique la columna (1-3)";
	Leer c;
	Si (tablero[r,c] = " ") Entonces
		Si (turno=1) Entonces
			tablero[r,c] <- "x";
			turno<- 2;
		SiNo
			tablero[r,c]<- "0";
			turno<-1;
		FinSi
		tiros<- tiros+1;
	SiNo
		Escribir "Repetir el tiro y seleccione una posicion que este libre...";
	FinSi
	Escribir "**********";
	Para i<-1 Hasta 3 Con Paso 1
		Para j<-1 Hasta 3 Con Paso 1
			Escribir tablero[i,j], "," Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinMientras
	
FinAlgoritmo
