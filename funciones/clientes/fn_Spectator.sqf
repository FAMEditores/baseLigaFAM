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
*	Descripcion:			Función para utilizacion de jueces dentro del juego, para poder ver en primera persona a cada miembro del equipo que observara.
*
* SINTAXYS
*	call FAM_fnc_Spectator;
*
* PARAMETROS
*	Ninguno de momento.
*
* EJEMPLOS
*	this allowDamage false; this addAction [("<t color='#e5ac02'>" + ("USAR CAMARA") + "</t>"),"call FAM_fnc_Spectator;"]; // a colocar dentro del init del jugador a ser juez.
*	
*	
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////

['Initialize', [player, [WEST], false, false, false, false, false, false, true, false]] call BIS_fnc_EGSpectator;