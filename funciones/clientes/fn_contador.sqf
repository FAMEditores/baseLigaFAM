/*
************************************************

@Para:      FAM
@Version:   0.1
************************************************
*/

/*
* INTRODUCIDO EN
*	Juego:					Arma 3 (Mod Liga-FAM).
*	Version:				1.7
*
* DESCRIPCION
*	Descripcion:			Calculador de puntuación de misión FAM que puede variar con cada misión a realizarse.
*							Importante saber que esta función es dependiente de FAM_fnc_bandera; y debe habilitarse en FAM_fnc_cronometro;
*							en caso que se quiera no brindar puntos al equipo si finaliza la el conteo del cronometro sin que hayan terminado
*							una misión, por defecto se utiliza solo con FAM_fnc_bandera;
*
* SINTAXYS
*	[conteo] call FAM_fnc_contador;
*
* PARAMETROS
*	conteo:
*		colocando el 1 = Si finaliza el tiempo antes de pinchar la bandera, todos los puntos vuelven al estado inicial o sea en cero todo.
*		colocando el 2 = (Por defecto) Si pinchan la bandera antes de finalizar el tiempo establecido sumara y restara los puntos para su resultado final.
*
* EJEMPLOS
*	[2] call FAM_fnc_contador; // para que al momento de pulsar en la bandera finalice danto la puntacion final, por defecto agregado en la funcion FAM_fnc_bandera; 
*	[1] call FAM_fnc_contador; // en caso contrario para que el equipo termine sin puntuación como resultado de una penalización agraviada.
*	
*/


conteo = _this select 0; //conteo 1 = conteo inincial, conteo 2 es conteo final.


//Conteo inicial
switch conteo do 
{
	case 1: 
	{
		
		//Bono bandera 
		//bonoBandera = 0;
		
		//Penalizacion por final de tiempo sin terminar mision
		penaTiempo = 0;
		publicVariable "penaTiempo";

		objetivoPrimarioTotal = 0;
		publicVariable "objetivoPrimarioTotal";

		objetivoSecundarioTotal = 0;
		publicVariable "objetivoSecundarioTotal";
		
		objetivoTareaTotal = 0;
		publicVariable "objetivoTareaTotal";

		vehAliadoFinal = 0;
		publicVariable "vehAliadoFinal";
		
		aliadosBajas = 0;
		publicVariable "aliadosBajas";

		civilesBajas = 0;
		publicVariable "civilesBajas";

		vehEnemigoFinal = 0;
		publicVariable "vehEnemigoFinal";

	};

	case 2: 
	{
		//quita el control del jugador
		player enableSimulation false; 

		//Objetivo primario 
		objetivoPrimarioTotal = objetivoPrimarioUno + objetivoPrimarioDos;
		publicVariable "objetivoPrimarioTotal";
		
		//Objetivo Secundario
		objetivoSecundarioTotal = objetivoSecundarioUno;
		publicVariable "objetivoSecundarioTotal";
		
		//Tareas 
		objetivoTareaTotal = objetivoTareaUno + objetivoTareaDos + objetivoTareaTres;
		publicVariable "objetivoTareaTotal";
		
		//Vehículos enemigos
		vehEnemigoFinal = 0; //vehEnemigoFinal * 2;
		vehAliadoFinal = (vehPrimero + vehSegundo + vehTercero + vehCuarto);
		publicVariable "vehAliadoFinal";

		//Bajas aliadas
		aliadosBajas = JugadorMuerto;
		publicVariable "playerKillFinal";

		//Bajas civiles 
		civilesBajas = civilMuerto;
		publicVariable "civilesBajas";


		penaTiempo = 0;
		publicVariable "penaTiempo";
		//Bono bandera sumará si la cantidad de jugadores que habían al inicio de misión están ahora dentro del trigger 
		if (triggerBandera) then 
		{
			bonoBandera = 5;
			publicVariable "bonoBandera";
		};

		//Penalización de tiempo
		if (publicTimerOver && publicTime == 0) then 
		{
			penaTiempo = 0;
			publicVariable "penaTiempo";
		};
	
		//Sumatoria total de puntos
		PuntajeFinal = (objetivoPrimarioTotal + objetivoSecundarioTotal + objetivoTareaTotal + vehEnemigoFinal + bonoBandera) - (civilesBajas + aliadosBajas + penaTiempo + vehAliadoFinal);
		publicVariable "PuntajeFinal";
		
		//PuntajeFinal = PuntajeFinal - ;
		if (PuntajeFinal < 0) then {PuntajeFinal = 0; publicVariable "PuntajeFinal";};

		//Llama la pantalla de final 
		call FAM_fnc_pantallaFinal;
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