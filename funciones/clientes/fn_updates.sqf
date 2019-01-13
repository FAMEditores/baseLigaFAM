/*
************************************************
@Editor:    Redburn
@Para:      FAM
@Date:      12/11/2018
@Version:   NONE
************************************************
*/

/*
* INTRODUCIDO EN
*	Juego:					Arma 3 (Mod Liga-FAM)
*	Version:				1.7
*
* DESCRIPCION
*	Descripcion:			Función para cargar todas las variables de puntuaciones desde el servidor (usado mayormente en competencias de liga).
*							Variables que puede cambiar en cualquier momento que lo decida el programador.
*
* SINTAXYS
*	call FAM_fnc_updates;
*
* PARAMETROS
*	Ninguno de momento.
*
* EJEMPLOS
*	call FAM_fnc_updates; // a ser colocado en un archivo initPlayerLocal.sqf "JIP"
*	
*	
*/


//////////////////////////////////////////////////////////////////////////////////////////////////////
if (!isDedicated) exitWith {};

publicVariable "objetivoPrimarioUno";
publicVariable "objetivoPrimarioDos";
publicVariable "objetivoSecundarioUno";
publicVariable "objetivoTareaUno";
publicVariable "objetivoTareaDos";
publicVariable "objetivoTareaTres";
publicVariable "vehPrimero";
publicVariable "vehSegundo";
publicVariable "vehTercero";
publicVariable "vehCuarto";
publicVariable "JugadorMuerto";
publicVariable "civilMuerto";
publicVariable "FAM_DeadPEnemyCount";
publicVariable "FAM_granDamage";
publicVariable "dispo1";

