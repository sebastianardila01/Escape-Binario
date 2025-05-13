Proceso escape_binario
	Definir posicion, respuesta, correcto Como Entero
	Definir binario, decimal Como Cadena

	posicion <- 1
	Escribir "===== ESCAPE BINARIO ====="
	Escribir "Avanza del punto 1 al 5 respondiendo correctamente."

	Mientras posicion <= 5 Hacer
		// Generar binario aleatorio entre 1 y 15
		correcto <- Aleatorio(1,15)
		binario <- ConvertirANumeroBinario(correcto)

		Escribir ""
		Escribir "Estás en la posición ", posicion
		Escribir "¿Qué número decimal es este binario: ", binario, "?"
		Leer respuesta

		Si respuesta = correcto Entonces
			Escribir "✅ Correcto. Avanzas una casilla."
			posicion <- posicion + 1
		Sino
			Escribir "❌ Incorrecto. Te quedas en la misma posición."
		FinSi
	FinMientras

	Escribir ""
	Escribir "🎉 ¡Felicitaciones! Escapaste del laberinto binario."
FinProceso

// Función auxiliar para convertir decimal a binario (PSeInt no lo tiene por defecto)
Funcion resultado <- ConvertirANumeroBinario(numero)
	Definir resultado Como Cadena
	Definir resto Como Entero
	resultado <- ""

	Mientras numero > 0 Hacer
		resto <- numero MOD 2
		resultado <- ConvertirATexto(resto) + resultado
		numero <- Trunc(numero / 2)
	FinMientras

	Si resultado = "" Entonces
		resultado <- "0"
	FinSi
FinFuncion
