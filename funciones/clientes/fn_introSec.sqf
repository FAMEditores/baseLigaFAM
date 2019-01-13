/*
************************************************
@Editor:    Redburn
@Para:      FAM
@Date:      27/10/2018
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
*	call FAM_fnc_introSec;
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
sleep 2;
any= ["Bienvenido", format ["%1",name player],
"Mapa Altis"
] spawn BIS_fnc_infoText;
