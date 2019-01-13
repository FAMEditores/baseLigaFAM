/*
************************************************
@Editor:    FAM
@Para:      FAM
@Date:      12/11/2018
@Update:	12/01/2019
@Version:   NONE
************************************************
*/

/*
* INTRODUCIDO EN
*	Juego:					Arma 3 (Mod Liga-FAM)
*	Version:				1.7
*
* DESCRIPCION
*	Descripcion:			Función para ser aplicado recomendablemente en un initPlayerLocal.sqf, pero tambien aplicaria en un init.sqf
*							El cual sirve para mostrar el briefing antes de iniciar la misión
*
* SINTAXYS
*	call FAM_fnc_briefing;
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

// Creditos del Editor
player createDiaryRecord["Diary", ["Cr"+toString[233]+"ditos",
"<center><p align='center'><br/>EQUIPO EDICION:<br/><br/><img image='img\fam.jpg' align='center' width='240' height='110' /></p></center><br/><br/>

<p align='justify'>
<br/>
EDICION por: poner aquí editor <br/>
</p>"]];


// Recursos
player createDiaryRecord["Diary", ["Recursos", "<p align='center'> 
<br/><font size='18' color='#29a329'>- Recursos:</font>
<br/><br/>

INTRODUCIR AQUI RECURSOS

</p>"]];

//Tareas
player createDiaryRecord["Diary", ["Tareas Adicionales", 
"<p align='center'><img image='img\tareas.jpg' align='center' width='400' height='30' /><br/><br/>
<br/>
INTRODUCIR AQUI LAS TAREAS ADICIONALES
</p>"]];

//Objetivos secundarios
player createDiaryRecord["Diary", ["Objetivos Secundarios", 
"<p align='center'><img image='img\ObjSecundario.jpg' align='center' width='400' height='30' /><br/><br/>
<br/>
INTRODUCIR AQUI OBJETIVO SECUNDARIOS
</p>"]];
//b - NO DISPONIBLE. <font color='#ffcc00'>(0pts)</font>
// Objetivos
player createDiaryRecord["Diary", ["Objetivos Primarios",
"<p align='center'><img image='img\ObjPrimario.jpg' align='center' width='400' height='30' /><br/><br/>
<br/>
INTRODUCIR AQUI OBJETIVOS PRIMARIOS
</p>"]];

// Situación
player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", 
"<p align='justify'><img image='img\Mision1.jpg' align='center' width='400' height='100' /><br/><br/>

INTRODUCIR SITUACION

</p>"]];
	
enableSentences false;


// Deshabilita el radio largo alcance automatico en mochila
tf_no_auto_long_range_radio = true;
TF_give_microdagr_to_soldier = false;
