<?php
session_start ();
$fecha=date("Y-m-d",time());
$hora=date(H);
$minuto=date(i);

//$hora2=$hora;
$hora2=$hora+1;
$horaminuto2=$hora2.":".$minuto;

include ("system/conexion.php");
include ("system/admin_user.class.php");
$admin_user = new admin_user;
if (!$admin_user->active ()) header ("Location: ../prodemundial/index.php");

?>
<style>
.input_desactivo 
{
	color: #FF0000; 
	font-size: 12pt;
}
.input_activo
{
	border: none;
	background: transparent;
	color:#333333;
	text-align:center;
	}
	input[type="text"]:hover {
	border: thin #999999 outset;
	filter:alpha(opacity=50);-moz-opacity:.5;opacity:.5;
	background: #FFFFFF;
	color: #000000;
	}
	input[type="text"]:focus  {
	border: thin #000000 solid;
	background: #FFFFFF;
	color: #000000;
	}
	input[type="text"]:focus:hover {
	border: thin #000000 solid;
	filter:alpha(opacity=100);-moz-opacity:1;opacity:1;
	background: #FFFFFF;
	color: #000000;
	}
</style>
<form action="tuprode.php" method="post">
<?php
echo '
 <table width="100%">
    <tr>
    <td width="40%" valign="top">
';
echo '<table cellpadding="3" cellspacing="1" style="background-color:#666666; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px">
		<tr style="background-color:F8F8a8" align="center">
			<td>grupo</td>
			<td>fecha</td>
			<td>hora</td>
			<td>Lugar</td>
			<td colspan=4>Partido</td>
		</tr>';

$usuario=$_SESSION['id_usuario'];
		
conectar();
//bloque para saber si existe ya un prode para este usuario.-
	$sql_prode = "select count(*) from prodes where id_usuario = ".$usuario;
	$result_prode = mysql_query($sql_prode);
	$total_count = mysql_result($result_prode, 0, 0); 
	
	
if ($total_count == 0)
{
	echo $total_count;
	// Bloque para sacar el maximo de un prode o saber si ya existe un prode para este usuario.-
	$sql_prode_max = "select max(id_prode) as m_id_prode from prodes";
	$rs_prode_max = mysql_query($sql_prode_max);
	$row_prode_max = mysql_fetch_array($rs_prode_max);
	$prode_id = $row_prode_max['m_id_prode'] + 1;
	//	echo $prode_id;
	
	// Bloque fin
	
	// Bloque para crear el prode		
	$sql= "select * from partidos";
	$result = mysql_query($sql);
	while ($row = mysql_fetch_array($result))
	{
		//echo $prode_id;
		$sql_insert_prode = "insert into prodes ( id_prode, id_partido, id_usuario, estado ) 
		values (".$prode_id.",".$row['id_partido'].",".$usuario.", 'A')";
		if (mysql_query($sql_insert_prode))
		{
			$partidos = $partidos + 1;
		}
		else
		{
			echo $sql_insert_prode;
		}	
	}
	echo $partidos." Son los partidos insertados en tu prode, tu prode es el Nro:". $prode_id;
	// Bloque Fin 
}
else
{
	$sql_mi_prode = "select distinct id_prode from prodes where id_usuario = ".$usuario;
	$result_mi_prode = mysql_query($sql_mi_prode);
	$result_tuprode = mysql_fetch_array($result_mi_prode);
	echo "Tu prode es el Nro:".$result_tuprode['id_prode']." escribe cada resultado y luego presiona la tecla ENTER para almacenar los cambios, SUERTE !!!";
	
	if ($_POST['partido'])
	{
		$mi_prode = count($_POST['partido']) ? $_POST['partido'] : array();
		$mi_goleq01 = count($_POST['goleq01']) ? $_POST['goleq01'] :array();
		$mi_goleq02 = count($_POST['goleq02']) ? $_POST['goleq02'] :array();
		
		 foreach($mi_prode as $c=>$v)
		 {	
			$sql_guarda_prode = "update prodes set golequipo01 = $mi_goleq01[$c], golequipo02 = $mi_goleq02[$c]                                 where id_prode = ".$result_tuprode['id_prode']." and id_partido = $v ";
			//echo $sql_guarda_prode. "<br>"	;
			mysql_query($sql_guarda_prode);
		 }	
	}


	$sql_tuprode = "select p.id_partido, p.grupo, p.fecha, p.hora, p.lugar, p.equipo01, p.equipo02, pp.golequipo01, pp.golequipo02, pp.id_usuario 
	from partidos p, prodes pp
	where pp.id_partido = p.id_partido
	and pp.id_usuario = ". $usuario." order by id_partido";
	$result = mysql_query($sql_tuprode);
	while ($row = mysql_fetch_array($result))
	{
		echo '<tr style="background-color:F8F8F8" align="center"><td>';
		echo $row['grupo'];
		echo '</td><td>';
		echo $row['fecha'];
		echo '</td><td>';
		echo $row['hora'];
		echo '</td><td>';
		echo $row['lugar'];
		echo '</td><td align="left">';
		echo traer_equipo_1($row['equipo01']);
		echo '</td><td>';
		
		echo '<input name="partido[]" id="'.$row['id_partido'].'" type="hidden" size="1" maxlength="2" value= '.$row['id_partido'].' />';
		
		if( ($fecha > $row['fecha']) || ($fecha == $row['fecha'] && $horaminuto2 > $row['hora']) )
		{
			echo '<input name="goleq01[]" id="'.$row['id_partido'].'" type="text" size="1" maxlength="2" value= '.$row['golequipo01'].' class="input_desactivo" readonly="readonly" />';
			echo '</td><td>';
			echo '<input name="goleq02[]" id="'.$row['id_partido'].'" type="text" size="1" maxlength="2" value= '.$row['golequipo02'].' class="input_desactivo" readonly="readonly" />';
		}
		else
		{	
		echo '<input name="goleq01[]" id="'.$row['id_partido'].'" type="text" size="1" maxlength="2" value= '.$row['golequipo01'].' class="input_activo" />';
		echo '</td><td>';
		echo '<input name="goleq02[]" id="'.$row['id_partido'].'" type="text" size="1" maxlength="2" value= '.$row['golequipo02'].' class="input_activo" />';
		}
		
		echo '</td><td align="right">';
		echo traer_equipo_2($row['equipo02']);
		echo '</td></tr>';
	} 
	
	echo '</td><tr>';
	echo '<td colspan="8"> <input type="submit" value="Guardar Prode" class="button" name="submit" / <td></tr>';
	
	echo '</table>';
	echo '</form';
}

function traer_equipo_1($equipo)
{
	conectar();
	$sql1 = "select * from equipos where id_equipo = ".$equipo ;
	$result1 = mysql_query($sql1);
	$row1 = mysql_fetch_array($result1);
	
	$equipo = '<img src="images/'.$row1['bandera'].'">&nbsp;&nbsp;'.$row1['pais'];
	return $equipo;
}
function traer_equipo_2($equipo)
{
conectar();
	
	$sql = "select * from equipos where id_equipo = ".$equipo ;
	$result = mysql_query($sql);
	$row = mysql_fetch_array($result);
	$equipo = $row['pais'].'&nbsp;&nbsp;<img src="images/'.$row['bandera'].'">';
	return $equipo;
}
?>