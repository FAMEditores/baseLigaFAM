puntos = _this select 0; //Cantidad de puntos que suma
tipo   = _this select 1; //Tipo de objetivo, 1 = primario, 2 = secundario, 3 = tarea.

//Separa el caso para cada tipo

switch tipo do 
{
  case 1: 
  {
	objetivoPrimario = objetivoPrimario + puntos;
	publicVariable "objetivoPrimario";
	["objetivoCumplido",["Se ha completado un objetivo primario",5]] remoteExecCall ["bis_fnc_showNotification", player, true];
  };
  case 2: 
  {
	objetivoSecundario = objetivoSecundario + puntos;
	publicVariable "objetivoSecundario";
	["objetivoCumplido",["Se ha completado un objetivo secundario",5]] remoteExecCall ["bis_fnc_showNotification", player, true];
  };
  case 3:
  {
	objetivoTarea = objetivoTarea + puntos;
	publicVariable "objetivoTarea";
	["objetivoCumplido", ["Se ha completado una tarea",5]] remoteExecCall ["bis_fnc_showNotification", player, true];
  };
};
