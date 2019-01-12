/*////////////////////////
/@Author Redbun
/@Date 21/09/2018
/@Update 23/09/2018
*/////////////////////////

/*
1. poner esta clase Script dentro del archivo de mision.
2. dentro del editor: Colocar una banera en el mapa.
3. Darle nombre a la bandera: banderaFAM.
4. Crear un trigger y en condicion poner: player distance banderaFAM < 5;
5. En act poner: this = [] execVM "flag.sqf";
6. Probar misión.
*/


detenerTiempo = false;
publicVariable "detenerTiempo";


[banderaFAM, //Nombre del objeto
"Terminar Partida", // Titulu de la acción
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", //El icono que se mostrara en pantalla (chequeara descripcion para este icono)
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa", // Icono de progreso mostrado en pantalla (cambios de icono cuando inicia la accion)
"player distance banderaFAM < 5", // La condicion para la accion a mostrar
"player distance banderaFAM < 5", // La condicion para la accion en progreso
{	_altura = flagAnimationPhase banderaFAM;
	while {_altura < 1} do 
	{
		banderaFAM setFlagAnimationPhase _altura;
		_altura = _altura + 0.1;
		sleep 0.2
	};
}, // El codigo ejecutado cuando la accion inicia (esto no sera usado por el momento)
{}, // El codigo ejecutado en todo el tick del progreso (eso no sera usado por ahora)
{detenerTiempo = true; [2] remoteExecCall ["contadorFAM", 0, true]; sleep 10; ["EveryoneWon"] remoteExecCall BIS_fnc_endMissionServer }, //El codigo ejecutado para completar
{hint "Manten Presionado para finalizar la misión"},  //El codigo ejecutado cuando el jugador es interrumpido (jugador le va por la key)
[], // Argumentos pasados al Script (eso no sera usado por el momento)
1, // la duracion (como sera de largo el proceso de accion para completar en segundos)
0, // prioridad (seguro sobre dejar esto en 0)
true, // Elimina la accion cuando la misma ya ha sido completada (true o false)
false // Muestra en estado inconciente (tener seguro dejar esto en false para que trabaje)
] remoteExec ["BIS_fnc_holdActionAdd", [0,-2] select isDedicated, true]; //Esto permite el trabajo en el server!

