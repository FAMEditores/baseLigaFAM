/*
************************************************
@Editor:    Redburn
@Para:      FAM
@Date:      28/10/2018
@Version:   NONE
************************************************
*/

/*
* INTRODUCIDO EN
*	Juego:					Arma 3 (Mod Liga-FAM)
*	Version:				1.7
*
* DESCRIPCION
*	Descripcion:			Función para ser aplicado como introducción de la misión.
*
* SINTAXYS
*	call FAM_fnc_introInit;
*
* PARAMETROS
*	Ninguno de momento.
*
* EJEMPLOS
*	Recomendable hacer un initPlayerLocal.sqf y dentro un "JIP" para aplicar el mismo.
*	Puede ser aplicado dentro de un init.sqf
*	
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

enableRadio false;
enableEnvironment false;

titleText ["","BLACK",0.01];

waitUntil {!isNull player && player == player};

player enableSimulation false; //congela al personaje
sleep 3;

2 cutRsc ["RscLogoA","BLACK",0.01];
titleText ["","BLACK IN",2];
sleep 3;
titleText ["","BLACK OUT",2];
sleep 3;

2 cutRsc ["RscLogoB","BLACK",0.01];
titleText ["","BLACK IN",2];
sleep 3;
titleText ["","BLACK OUT",2];
sleep 3;
2 cutFadeOut 0;
titleText ["","BLACK IN",2];

enableEnvironment true;
enableRadio true;

//sleep 15;
["BIS_blackStart", false] call BIS_fnc_blackOut;
// Modificado por red
sleep 2;
any= ["Bienvenido", format ["%1",name player],
"Altis, 03:15 PM"
] spawn BIS_fnc_infoText;
sleep 5;
["BIS_blackStart", true] call BIS_fnc_blackIn;

sleep 2;
//[1] call contadorFAM; //Primer conteo de unidades
["inicio",["a partir de ahora comienza el reloj",5]] call BIS_fnc_showNotification; //muestra notificación para iniciar el reloj
player enableSimulation true; //descongela al personaje
[7200] call FAM_fnc_cronometro; //inicio del reloj 

