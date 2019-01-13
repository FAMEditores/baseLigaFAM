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
*	Descripcion:			Función para pruebas, puede teleportarte en misiones multijugador como en un solo jugador.
*
* SINTAXYS
*	call FAM_fnc_teleport;
*
* PARAMETROS
*	Ninguno de momento.
*
* EJEMPLOS
*	call FAM_fnc_teleport; // dentro del init del jugador quien usara el mismo para teleportarse.
*	
*	
*/

titleText["Selecciona una posición en el Mapa", "PLAIN"];
onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";