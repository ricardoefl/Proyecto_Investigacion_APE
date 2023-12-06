Algoritmo Adivina_Numero
	Definir loes1, loes2 Como Lógico
	Definir num12, num13, num17, serie, acumulador, numeroOpcion Como Entero
	Definir juego, numeroOpcion2 Como Cadena
	numero_generado <- 20
	loes1 <- Verdadero
	serie <- 0
	num12 <- 0
	num13 <- 1
	acumulador <- 2
	veces <- 11
	Escribir 'Intenta adivinar el numero'
	Repetir
		Escribir 'Adivine el numero:'
		Leer numero_user
		Mientras numero_generado<>numero_user Y veces>1 Hacer
			Escribir 'INCORRECTO!, QUIERES UNA PISTA? (si/no)'
			Escribir 'RECUERDA QUE SI TE DOY UNA PISTA SE TE RESTA UN INTENTO'
			Leer numeroOpcion2
			Si (numeroOpcion2='si') Entonces
				veces <- veces-1
				Escribir "Selecciona la pista que quieres ver:"
				Escribir"[1] Saber si el numero es mayor o menor"
				Escribir"[2] Saber si el numero es par o impar"
				Escribir"[3] Saber si el numero es o no primo"
				Escribir"[4] Saber si el numero pertenece a la serie de fibonacci"
				Escribir"[5] Saber si el numero es multiplo de n"
				Leer numeroOpcion
				Segun numeroOpcion Hacer
					1:
						Si (numero_generado>numero_user) Y (numeroOpcion2='si') Entonces
							Escribir 'EL NUMERO ES MAYOR AL QUE INGRESASTE'
						SiNo
							Si (numero_generado<numero_user) Y (numeroOpcion2='si') Entonces
								Escribir 'EL NUMERO ES MENOR AL QUE INGRESASTE'
							FinSi
						FinSi
					2:
						Si (numero_generado MOD 2==0) Y (numeroOpcion2='si') Entonces
							Escribir 'EL NUMERO ES PAR'
						SiNo
							Si ((numero_generado MOD 2<>0) Y (numeroOpcion2='si')) Entonces
								Escribir 'EL NUMERO ES IMPAR'
							FinSi
						FinSi
					3:
						Si (numero_generado==1) Y (numeroOpcion2='si') Entonces
							Escribir 'EL NUMERO NO ES PRIMO'
						SiNo
							Mientras (acumulador<numero_generado) Hacer
								Si (numero_generado MOD acumulador=0) Entonces
									loes1 <- Falso
								FinSi
								acumulador <- acumulador+1
							FinMientras
						FinSi
						Si (loes1=Verdadero) Y (numeroOpcion2='si') Entonces
							Escribir 'EL NUMERO ES PRIMO'
						SiNo
							Si (loes1=Falso) Y (numeroOpcion2='si') Entonces
								Escribir 'EL NUMERO NO ES PRIMO'
							FinSi
						FinSi
					4:
						Mientras serie<numero_generado Hacer
							num17 <- num12
							num12 <- num13
							num13 <- num17+num13
							serie <- num12
						FinMientras
						Si (serie=numero_generado) Entonces
							loes2 <- Verdadero
						SiNo
							loes2 <- Falso
						FinSi
						Si (loes2=Verdadero Y (numeroOpcion2='si')) Entonces
							Escribir 'EL NUMERO PERTENECE A LA SERIE DE FIBONACCI'
						SiNo
							Si (loes2=Falso Y (numeroOpcion2='si')) Entonces
								Escribir 'EL NUMERO NO PERTENECE A LA SERIE DE FIBONACCI'
							FinSi
						FinSi
					5:
						Si (numero_generado MOD 3==0) Y (numeroOpcion2='si') Entonces
							Escribir 'EL NUMERO MULTIPLO DE 3'
						SiNo
							Si (numero_generado MOD 5==0) Y (numeroOpcion2='si') Entonces
								Escribir 'EL NUMERO ES MULTIPLO DE 5'
							SiNo
								Si (numero_generado MOD 7==0) Y (numeroOpcion2='si') Entonces
									Escribir 'EL NUMERO ES MULTIPLO DE 7'
								SiNo
									Si (numero_generado MOD 11==0) Y (numeroOpcion2='si') Entonces
										Escribir 'EL NUMERO ES MULTIPLO DE 11'
									SiNo
										Si (numero_generado MOD 12==0) Y (numeroOpcion2='si') Entonces
											Escribir 'EL NUMERO ES MULTIPLO DE 12'
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					De Otro Modo:
						Escribir "Opcion incorrecta, que no vez las opciones o que????"
				Fin Segun
			FinSi
			veces <- veces-1
			Escribir 'Te quedan ', veces, ' intentos!'
			Leer numero_user
		FinMientras
		Si numero_generado=numero_user Entonces
			Escribir 'Exacto adivinaste en:', 11-veces, ' intentos.'
		SiNo
			Escribir 'perdiste'
			Escribir 'El numero era: ', numero_generado
		FinSi
		Escribir 'Deseas seguir jugando? (si/no)'
		Leer juego
	Hasta Que (juego=='no')
	Escribir 'Bueno, adios pues'
FinAlgoritmo
