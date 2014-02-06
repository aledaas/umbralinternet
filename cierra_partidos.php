<?php
session_start ();
$usuario=$_SESSION['id_usuario'];
include('system/conexion.php');
$ronda = $_GET['ronda'];
$torneo = $_GET['torneo'];
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

<?php
if ($_POST['partido'])
{
	$db=Conectar();
	$mi_partido = count($_POST['partido']) ? $_POST['partido'] : array();
	$mi_goleq01 = count($_POST['goleq01']) ? $_POST['goleq01'] :array();
	$mi_goleq02 = count($_POST['goleq02']) ? $_POST['goleq02'] :array();
	$mi_check = count($_POST['check_partido']) ? $_POST['check_partido'] :array();
	$mi_estado = count($_POST['estado']) ? $_POST['estado'] :array();
	
	 foreach($mi_partido as $c=>$v) // $c=posicion, $v=contenido
	 {
	 	if($mi_estado[$c]=='A' && $mi_goleq01[$c]<>99 && $mi_goleq02[$c]<>99)
		{
			// Guardamos resultados cargados a todos los partidos
			$sql_guarda_partido = "update partidos 
			set golequipo01=".$mi_goleq01[$c].",golequipo02=".$mi_goleq02[$c]." where id_partido=".$v;
			echo $sql_guarda_partido."<br>";
			$db->Execute($sql_guarda_partido);
			
			foreach($mi_check as $d=>$dv) // $d=posici�n, $dv=contenido
			{
				if($dv==$v)
				{
					//echo $v." - ".$dv."<br>";
					rankingUsuarios($v); // $v = id_partido
				}
			}
		}
		else
		{
			if($mi_estado[$c]=='C') echo "El partido".$v." estaba cerrado<br>";
			else echo "No se cargaron bien los resultados del partido".$v."<br>";
		}
	 }	
	 $db->close();
}
?>

<form action="" method="post">
<?php
echo '
 <table width="100%">
    <tr>
    <td width="40%" valign="top">
';
echo '<table cellpadding="3" cellspacing="1" style="background-color:#666666; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px">
		<tr style="background-color:F8F8a8" align="center">
			<td>Id</td>
			<td>Grupo</td>
			<td>Fecha</td>
			<td>Hora</td>
			<td>Lugar</td>
			<td colspan=4>Partido</td>
			<td>Cerrar</td>
		</tr>';
		
$db=Conectar();

$sql="select id_partido,grupo,fecha,hora,lugar,equipo01,equipo02,golequipo01,golequipo02,ronda,estado 
from partidos where ronda = ".$ronda." order by id_partido ";
$result=$db->Execute($sql);
while(!$result->EOF)
{
	echo '<tr style="background-color:F8F8F8" align="center"><td>'.$result->fields['id_partido'].'</td><td>';
	echo $result->fields['grupo'];
	echo '</td><td>';
	echo $result->fields['fecha'];
	echo '</td><td>';
	echo $result->fields['hora'];
	echo '</td><td>';
	echo $result->fields['lugar'];
	echo '</td><td align="left">';
	echo traer_equipo_1($result->fields['equipo01']);
	echo '</td><td>';
	
	echo '<input name="partido[]" id="'.$result->fields['id_partido'].'" type="hidden" size="1" maxlength="2" value= '.$result->fields['id_partido'].' />';
	
	if($result->fields['estado']=='C')
	{
		echo '<input name="goleq01[]" id="'.$result->fields['id_partido'].'" type="text" size="1" maxlength="2" value="'.$result->fields['golequipo01'].'" class="input_desactivo" readonly="readonly" />';
		echo '</td><td>';
		echo '<input name="goleq02[]" id="'.$result->fields['id_partido'].'" type="text" size="1" maxlength="2" value="'.$result->fields['golequipo02'].'" class="input_desactivo" readonly="readonly" />';
	}
	else
	{	
		echo '<input name="goleq01[]" id="'.$result->fields['id_partido'].'" type="text" size="1" maxlength="2" value="'.$result->fields['golequipo01'].'" class="input_activo" />';
		echo '</td><td>';
		echo '<input name="goleq02[]" id="'.$result->fields['id_partido'].'" type="text" size="1" maxlength="2" value="'.$result->fields['golequipo02'].'" class="input_activo" />';
	}
	
	echo '</td><td align="right">';
	echo traer_equipo_2($result->fields['equipo02']);
	echo '</td>';
	echo '<td><input type="checkbox" name="check_partido[]" id="'.$result->fields['id_partido'].'" value="'.$result->fields['id_partido'].'" />
	     <input type="hidden" name="estado[]" id="'.$result->fields['id_partido'].'" 
		 value="'.$result->fields['estado'].'" />
		 </td>';
	echo '</tr>';
	
	$result->MoveNext();
} 
$result->close();	
$db->close();

echo '</td><tr>';
echo '<td colspan="9"> <input type="submit" value="Guardar Partidos" class="button" name="submit" / <td></tr>';

echo '</table>';
echo '</form';

function traer_equipo_1($equipo)
{
	conectar();
	$sql1 = "select equipo, escudo from equipos where id_equipo = ".$equipo ;
	$result1 = mysql_query($sql1);
	$row1 = mysql_fetch_array($result1);
	$equipo = '<img src="images/'.$row1['escudo'].'"  width="35" height="34" >&nbsp;&nbsp;'.$row1['equipo'];
	return $equipo;
}
function traer_equipo_2($equipo)
{
	conectar();
	$sql_2 = "select equipo, escudo from equipos where id_equipo = ".$equipo ;
	$result_2 = mysql_query($sql_2);
	$row_2 = mysql_fetch_array($result_2);
	$equipo = $row_2['equipo'].'&nbsp;&nbsp;<img src="images/'.$row_2['escudo'].'"  width="35" height="34" >';
	return $equipo;
}

function rankingUsuarios($id_partido)
{
	$db=Conectar();
	$fecha=date("d/m/Y",time());

	// Consultamos los datos del partido
	$sql="select golequipo01,golequipo02,(golequipo01-golequipo02) as diferencia, ronda, torneo   
		  from partidos
		  where id_partido='".$id_partido."'";
	$rs_partido=$db->Execute($sql);
	$golequipo01_partido=$rs_partido->fields['golequipo01'];
	$golequipo02_partido=$rs_partido->fields['golequipo02'];
	$ronda=$rs_partido->fields['ronda'];
	$torneo=$rs_partido->fields['torneo'];
	
	if($rs_partido->fields['diferencia']>0)  $resultado_partido='gano01';
	if($rs_partido->fields['diferencia']<0)  $resultado_partido='gano02';
	if($rs_partido->fields['diferencia']==0) $resultado_partido='empate';

	$rs_partido->close();
	
	echo "Resultados Partido:".$id_partido."-".$golequipo01_partido."-".$golequipo02_partido."-".$resultado_partido."<br/>";
	
	// Consultamos la tabla de prodes, para asignar la puntuaci�n a los usuarios
	$sql="select id_usuario,golequipo01,golequipo02,(golequipo01-golequipo02) as diferencia 
		  from prodes 
		  where id_partido='".$id_partido."' and estado='A' and fecha != '2010-06-01' order by 1";
        //print $sql; die;
	$rs_prode=$db->Execute($sql);
	while(!$rs_prode->EOF)
	{
		$id_usuario=$rs_prode->fields['id_usuario'];
		$golequipo01_prode=$rs_prode->fields['golequipo01'];
		$golequipo02_prode=$rs_prode->fields['golequipo02'];
		if($rs_prode->fields['diferencia']>0)  $resultado_prode='gano01';
		if($rs_prode->fields['diferencia']<0)  $resultado_prode='gano02';
		if($rs_prode->fields['diferencia']==0) $resultado_prode='empate';
		
		echo "Resultados Prode ".$id_partido.": ".$golequipo01_prode."-".$golequipo02_prode."-".$resultado_prode."<br/>";
		
		// verifico que el usuario tenga ranking para esa ronda
		$sql="select * from ranking where id_usuario='".$id_usuario."' and ronda='".$ronda."' and torneo='".$torneo."'";
		$recordset=$db->Execute($sql);
		if ($recordset->RecordCount()==0)
		{
			$sql="insert into ranking values('".$id_usuario."','".$ronda."','".$torneo."','0')";
			$db->Execute($sql);
		}
		$recordset->close();
	
		// Si coincide el resultado
                //print($resultado_partido."".$resultado_prode);die;
		if($resultado_prode==$resultado_partido)
		{
			$sql="update ranking set puntos=puntos+1 where id_usuario='".$id_usuario."' and ronda='".$ronda."' and torneo='".$torneo."'";
			$db->Execute($sql);
		}
		
		// Si coincide el score (resultados exacto en goles)
		if($golequipo01_prode==$golequipo01_partido && $golequipo02_prode==$golequipo02_partido)
		{
			$sql="update ranking set puntos=puntos+2 where id_usuario='".$id_usuario."' and ronda='".$ronda."' and torneo='".$torneo."'";
			$db->Execute($sql);
		}
		
		// cerramos el prode para ese partico y ese usuario
		$sql="update prodes set estado='C' where id_usuario='".$id_usuario."' and id_partido='".$id_partido."'";
		$db->Execute($sql);
		
		$rs_prode->MoveNext();
	}
	if($rs_prode->RecordCount()==0) echo "El partido ya estaba cerrado<br>";
	else
	{
		// Cerramos el partido
		$sql="update partidos set estado='C' where id_partido='".$id_partido."'";
		$db->Execute($sql);
	}
	
	$rs_prode->close();	
	$db->close();
}

?>