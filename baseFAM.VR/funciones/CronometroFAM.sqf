/*
*********************************
@Author: |ArgA|Redburn
@Date: 26/08/2018
@Update: 23/9/2018
@Version: 1.2
@Requiere Flag.sqf (FAM)
*********************************
*/

/*
1. Poner esta clase Script dentro del archivo de mision.
2. Crear el archivo init.sqf
3. Dentro del init.sqf colocar: _cronometro = [] execVM "Cronometro.sqf";
5. Colocar la cantidad en segundos, Ejemplo: [15] execVM "Cronometro.sqf"; (donde 15 son segundos), NOTA: se calcula por segundos si desea poner en horas debe de calcular cuantos segundos posee esa hora que desea poner y sustituir el 15 por los segundos que desea que sean.
6. Probar misión.
*/
private _terminarTiempo = true;

checkrun = true;
//////para que el script se ejecute solo una vez


_publicTime = _this select 0;



publicTimerON = true;

//////////////////////
publicTimerOver = false;
detenerTiempo = false;

while {publicTimerON && _publicTime>10} do { //mientras sea mayor a 10 segundos
	_publicTime = _publicTime -1;
	sleep 1;
	_timestamp = _publicTime/3600;

	if (detenerTiempo) exitWith {
			while {true} do {
				
				["<t font = 'PuristaMedium'><t size = '1'><t color = '#00ffd8'>" + timedisplay + "</t>",-1,0.10,10,0,0,789] spawn BIS_fnc_dynamicText;
				sleep 10;
			};
		};

	timedisplay = [_timestamp, "HH:MM:SS"] call BIS_fnc_timeToString;
	["<t font = 'PuristaMedium'><t size = '1'>" + timedisplay + "</t>",1,-0.15,1,0] spawn BIS_fnc_dynamicText; 


};

//Últimos 10 segundos en rojo con un pitido
while {publicTimerON && _publicTime<=10 && _publicTime> 1} do { //mientras sea menor o igual a 10 y mayor a 1

	_publicTime = _publicTime -1;
	sleep 1;
	_timestamp = _publicTime/3600;

	if (detenerTiempo) exitWith {
		while {true} do {
			
				["<t font = 'PuristaMedium'><t size = '1'><t color = '#00ffd8'>" + timedisplay + "</t>",-1,0.10,10,0,0,789] spawn BIS_fnc_dynamicText;
				sleep 10;
			};
	};

	timedisplay = [_timestamp, "HH:MM:SS"] call BIS_fnc_timeToString;
	["<t font = 'PuristaMedium'><t size = '1'><t color = '#FF0000'>" + timedisplay + "</t>",-1,-1,1,0] spawn BIS_fnc_dynamicText;
	playSound "time";

};

while {publicTimerON && _publicTime>= 0} do { //si es menor a 1 e igual o mayor 0
	_publicTime = _publicTime -1;
	sleep 1;
	_timestamp = _publicTime/3600;
	_fin = [_timestamp, "HH:MM:SS"] call BIS_fnc_timeToString;
	["<t font = 'PuristaMedium'><t size = '1'><t color = '#FF0000'>" + "00:00:00" + "</t>",-1,0.10,10,1,0,789] spawn BIS_fnc_dynamicText;
};

checkrun = false;
if (_publicTime <= 0) exitWith { //Si, el tiempo llega a 0 entonces cargara final de mision.
	publicTimerOver = true; 
	publicVariable "publicTimerOver";
	//Llamando al contador final
	[2] call contadorFAM; 
	

}; 



