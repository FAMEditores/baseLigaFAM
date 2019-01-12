conteo = _this select 0; //conteo 1 = conteo inincial, conteo 2 es conteo final.

//Conteo inicial

switch conteo do 
{
	case 1: 
	{
		//Objetivo primario 
		objetivoPrimario   = 0;
		//Objetivo Secundario
		objetivoSecundario = 0;

		//Tareas 
		objetivoTarea = 0;
		//Vehículos neutralizados
		vehEnemigoFinal = 0;
		//Bono bandera 
		bonoBandera    = 0;
		triggerBandera = false;
		//jugadores total en partida
		jugadores = west countside playableUnits;

		//Total de civiles en la misión
		civTotal = civilian countSide allUnits;
		//Vehículos perdidos 
		vehAliadoFinal = 0;
		//Penalización de tiempo
		penaTiempo = 0;

	};

	case 2: 
	{
		//quita el control del jugador
		player enableSimulation false; 

		//Objetivo primario suma cada vez que se completa uno

		//Objetivo secundario suma cada vez que se completa uno 

		//Tareas suma cada vez que se completa uno 

		//Vehículos enemigos

		vehEnemigoFinal = vehEnemigoFinal * 2;

		//Bono bandera sumará si la cantidad de jugadores que habían al inicio de misión están ahora dentro del trigger 
		if (triggerBandera) then 
		{
			bonoBandera = 5;
		};

		//Bajas aliadas
		jugadoresFinal = west countSide playableUnits;
		jugadoresFinal = jugadores - jugadoresFinal;

		//Bajas civiles 
		civilesFinal = civilian countSide allUnits;
		civilesFInal = civTotal - civilesFinal;
		civilesFinal = civilesFinal * 2;

		//Vehículos perdidos cuenta en misión
		vehAliadoFinal = vehAliadoFinal * 2;

		//Penalización de tiempo

		if (publicTimerOver) then 
		{
			penaTiempo = 10;
			publicVariable "penaTiempo"
		};
	
		//Sumatoria total de puntos
		PuntajeFinal = (objetivoPrimario + objetivoSecundario + objetivoTarea + vehEnemigoFinal + bonoBandera) - (jugadoresFinal + civilesFinal + vehAliadoFinal + penaTiempo);
		if (PuntajeFinal < 0) then {PuntajeFinal = 0};

		//Llama la pantalla de final 
		[] call pantallaFinalFAM;
	};
};

/* AYUDA MEMORIA

123401 = OBJETIVOS PRIMARIOS 
123402 = OBJETIVOS SECUNDARIOS 
123403 = TAREAS 
123404 = VEHICULOS NEUTRALIZADOS (+2 x cada 1)
123405 = BONO BANDERA (+5 si todos en la bandera)

123406 = BAJAS ALIADAS (-1)
123407 = BAJAS CIVILES (-2 x cada 1)
123408 = VEHICULOS PERDIDOS (-2 x cada 1)
123409 = PENALIZACIÓN TIEMPO (-10)

123410 = PUNTAJE FINAL (sumatoria bonos - penalizaciones)
*/ 