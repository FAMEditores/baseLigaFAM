/*
************************************************
@Editor:    Redburn
@Para:      FAM
@Date:      27/10/2018
@Version: 	1.2
************************************************
*/

/*
* INTRODUCIDO EN
*	Juego:					Arma 3 (Mod Liga-FAM).
*	Version:				1.7
*
* DESCRIPCION
*	Descripcion:			Cronometro previsualizado en pantalla del jugador, para que pueda saber el tiempo que le resta de partida antes de finalizar el tiempo establecido por jueces.
*							Puede usarse aparte esta funcion pero para liga competitiva es dependiente de: FAM_fnc_bandera;
*
* SINTAXYS
*	[tiempo] call FAM_fnc_contador;
*
* PARAMETROS
*	conteo:
*		[7200] call FAM_fnc_cronometro; // 7200sec = 2 horas de partidas, una vez termine el tiempo ejecutara la acción establecida.
*
* EJEMPLOS
*		dentro de FAM_fnc_introInit; puedeencontrarse esta funcion y desde aquí establecer el tiempo que se requiera como reglamento a terminar misión.
*		[7200] call FAM_fnc_cronometro; // puede colocarse dentro de init.sqf (nota: no recomendable para evento de liga ya que si se el jugador sale de partida y entra se reseteara el cronometro y puede contraer consigo inestabilidad para la mision de ligas).
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
	//[2] call contadorFAM; 
	

}; 



