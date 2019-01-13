//Tiempo

class tiempoAgotado 
{
    title = "FIN DE LA MISIÓN";
    iconPicture = "\a3\Ui_f\data\GUI\Cfg\Notifications\tridentEnemy_ca.paa";
    description = "<t>El tiempo de misión se ha agotado</t>";
    color[] = {1,1,1,1};
    colorIconPicture[] = {0.5,0,0,0.5};
    colorIconText[] = {1,1,1,1};
    duration = 5;
}; //fin tiempo

//INICIO DE MISION
class inicio 
{
    title = "Inicio de misión";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa"
    description = "%1";
    color[] = {1,1,1,1};
    colorIconPicture[] = {0,1,0,0.5};
    colorIconText[] = {1,1,1,1};
    duration = 5;
}; //FIN INICIO DE MISION

//objetivos principales
class objPrimUno
{
    title = "OBJETIVO A CUMPLIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa"
    description = "%1";
    color[] = {0.7,1.0,0.3,1.0};
    sound = "taskSucceeded";
    colorIconPicture[] = {0,1,0,0.5};
    colorIconText[] = {0.7,1.0,0.3,1.0};
    duration = 5;
    priority = 20;
};

class objPrimUnoF 
{
    title = "OBJETIVO A FALLIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    sound = "taskFailed";
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};

class objPrimDos 
{
    title = "OBJETIVO B CUMPLIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa"
    description = "%1";
    color[] = {0.7,1.0,0.3,1.0};
    colorIconPicture[] = {0,1,0,0.5};
    colorIconText[] = {0.7,1.0,0.3,1.0};
    duration = 5;
    priority = 19;
};

class objPrimDosF 
{
    title = "OBJETIVO B FALLIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    sound = "taskFailed";
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
}; //FIN OBJETIVOS PRIMARIOS

//OBJETIVO SECUNDARIO
class objSecondOne
{
    title = "OBJ. SECUNDARIO CUMPLIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa"
    description = "%1";
    color[] = {0.7,1.0,0.3,1.0};
    colorIconPicture[] = {0,1,0,0.5};
    colorIconText[] = {0.7,1.0,0.3,1.0};
    duration = 5;
    priority = 18;
};
//FIN OBJETIVOS SECUNDARIOS

//TAREAS 
class tareaUno 
{
    title = "TAREA";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa"
    description = "%1";
    color[] = {0.7,1.0,0.3,1.0};
    colorIconPicture[] = {0,1,0,0.5};
    colorIconText[] = {0.7,1.0,0.3,1.0};
    duration = 5;
    priority = 17;
};


class tareaUnoF 
{
    title = "TAREA";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};

class tareaDos 
{
    title = "TAREA";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa"
    description = "%1";
    color[] = {0.7,1.0,0.3,1.0};
    colorIconPicture[] = {0,1,0,0.5};
    colorIconText[] = {0.7,1.0,0.3,1.0};
    duration = 5;
    priority = 16;
};

class tareaDosF 
{
    title = "TAREA";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};

class tareaTres 
{
    title = "TAREA";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa"
    description = "%1";
    color[] = {0.7,1.0,0.3,1.0};
    colorIconPicture[] = {0,1,0,0.5};
    colorIconText[] = {0.7,1.0,0.3,1.0};
    duration = 5;
}; 

class tareaTresF 
{
    title = "TAREA";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};//FIN TAREAS


//DAÑOS VEHICULOS ALIADOS
class veh1 
{
    title = "VEHICULO ALIADO PERDIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};

class veh2 
{
    title = "VEHICULO ALIADO PERDIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};

class veh3 
{
    title = "HELICOPTERO ALIADO PERDIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};

class veh4 
{
    title = "VEHICULO ALIADO PERDIDO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
};

class Civil
{
    title = "CIVIL MUERTO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
    priority = 6;
};

class JugadorDead
{
    title = "JUGADOR MUERTO";
    iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa"
    description = "%1";
    color[] = {1.0,0.3,0.2,1.0};
    colorIconPicture[] = {1.0,0.3,0.2,1.0};
    colorIconText[] = {1,1,1,1};
    duration = 5;
    priority = 5;
};