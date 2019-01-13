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
*	Descripcion:			Función que cambia las habilidades de los NPC Enemigos.
*
* SINTAXYS
*	call FAM_fnc_skillEnemy;
*
* PARAMETROS
*	Ninguno de momento.
*
* EJEMPLOS
*	call FAM_fnc_skillEnemy; puede ser colocado en el init.sqf para que la funcion tenga efecto.
*	
*	
*/


//////////////////////////////////////////////////////////////////////////////////////////////////////
{ 
	if (!(isPlayer _x))then { 
		_x setSkill ["aimingAccuracy",0.20]; 
		_x setSkill ["aimingShake",0.15]; 
		_x setSkill ["aimingSpeed",0.50]; 
		_x setSkill ["spotDistance",0.70]; 
		_x setSkill ["spotTime",0.50]; 
		_x setSkill ["courage",1]; 
		_x setSkill ["reloadSpeed",1]; 
		_x setSkill ["commanding",1]; 
	} 

} forEach allUnits;