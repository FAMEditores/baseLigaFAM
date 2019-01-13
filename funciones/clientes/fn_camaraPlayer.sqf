/*
************************************************
@Editor:    Redburn
@Para:      FAM
@Date:      27/10/2018
@Version:   0.1
************************************************
*/

/*
* INTRODUCIDO EN
*	Juego:					Arma 3 (Mod Liga-FAM)
*	Version:				1.7
*
* DESCRIPCION
*	Descripcion:			Quita la camara de tercera persona tanto en el jugador como al montarse en un vehiculo ya sea aereo, tierra o maritimo.
*
*
* SINTAXYS
*	call FAM_fnc_camaraPlayer;
*
* PARAMETROS
*	Ninguno de momento.
*
* EJEMPLOS
*	Puede aplicarse dentro de un initPlayerLocal.sqf un "JIP".
*	Puede aplicarse dentro de un init.sqf
*	
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////

//Si jugador intenta sacar 3ra Persona no podra
onEachFrame {
   if(cameraOn == vehicle player) then {
       if(vehicle player == player) then {
           if(driver vehicle player == player) then {
               if(cameraView == "EXTERNAL") then {
                   player switchCamera "INTERNAL";
               };
           };
       };
   };
}; 

//si esta dentro de un vehiculo no podra sacar 3ra Persona
addMissionEventHandler ["eachFrame", { 
	if (!isnull objectParent player && cameraView == "external") then { 
		player switchCamera "internal" 
	}
}];