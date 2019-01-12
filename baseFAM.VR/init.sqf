//Compilando las funciones

contadorFAM      = compile preprocessFileLineNumbers "funciones\contadorFAM.sqf";
cronometroFAM    = compile preprocessFileLineNumbers "funciones\cronometroFAM.sqf";
PuntajeFAM       = compile preprocessFileLineNumbers "funciones\PuntajeFAM.sqf";
pantallaFinalFAM = compile preprocessFileLineNumbers "funciones\pantallaFinalFAM.sqf";

//Lanzando todo 
triggerBandera = false; 
[1] call contadorFAM; //Primer conteo de unidades
player enableSimulation false; //congela al personaje
sleep 4;                       //4 segundos de gracia para asegurar que todos hayan cargado correctamente
[] execVM "funciones\terceraPersona";
["inicio",["a partir de ahora comienza el reloj",5]] call BIS_fnc_showNotification; //muestra notificación para iniciar el reloj
player enableSimulation true; //descongela al personaje
[300] call cronometroFAM;    //inicio del reloj 

