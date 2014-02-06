<?php
session_start ();
$usuario=$_SESSION['usuario'];
$perfil=$_SESSION['perfil'];
include('system/conexion.php');
$db=Conectar();
$fecha=date("d/m/Y",time());
$id_partido=$_GET['id_partido'];
//$id_partido=1;
$ronda=$_GET['ronda'];
//$ronda=1;

// Consultamos los datos del partido
$sql="select golequipo01,golequipo02,(golequipo01-golequipo02) as diferencia 
	  from partidos
	  where id_partido='".$id_partido."'";
	  
$rs_partido=$db->Execute($sql);


$golequipo01_partido=$rs_partido->fields['golequipo01'];
$golequipo02_partido=$rs_partido->fields['golequipo02'];
if($rs_partido->fields['diferencia']>0)  $resultado_partido='gano01';
if($rs_partido->fields['diferencia']<0)  $resultado_partido='gano02';
if($rs_partido->fields['diferencia']==0) $resultado_partido='empate';
$rs_partido->close();
echo "Resultados Partido:".$id_partido."-".$golequipo01_partido."-".$golequipo02_partido."-".$resultado_partido."<br/>";

// Consultamos la tabla de prodes, para asignar la puntuaci�n a los usuarios
$sql="select id_usuario,golequipo01,golequipo02,(golequipo01-golequipo02) as diferencia 
	  from prodes 
	  where id_partido='".$id_partido."' 
	  AND year( fecha ) <>2010 
	  and estado='A'";

$rs_prode=$db->Execute($sql);
while(!$rs_prode->EOF)
{
	$id_usuario=$rs_prode->fields['id_usuario'];
	$golequipo01_prode=$rs_prode->fields['golequipo01'];
	$golequipo02_prode=$rs_prode->fields['golequipo02'];
	
	
	if($rs_prode->fields['diferencia']>0)  $resultado_prode='gano01';
	if($rs_prode->fields['diferencia']<0)  $resultado_prode='gano02';
	if($rs_prode->fields['diferencia']==0) $resultado_prode='empate';
	
	echo "Resultados Prode:".$id_partido."-".$golequipo01_prode."-".$golequipo02_prode."-".$resultado_prode."<br/>";
	
	// verifico que el usuario tenga ranking para esa ronda
	$sql="select * from ranking where id_usuario='".$id_usuario."' and ronda='".$ronda."'";
	$recordset=$db->Execute($sql);
	if ($recordset->RecordCount()==0)
	{
		$sql="insert into ranking values('".$id_usuario."','".$ronda."','0')";
		$db->Execute($sql);
		echo "RANKING: ".$sql."<br>";
	}
	$recordset->close();

	// Si coincide el resultado
	if($resultado_prode==$resultado_partido)
	{
		$sql="update ranking set puntos=puntos+1 where id_usuario='".$id_usuario."' and ronda='".$ronda."'";
		$db->Execute($sql);
		echo "RANKING: ".$sql."<br>";
	}
	
	// Si coincide el score (resultados exacto en goles)
	if($golequipo01_prode==$golequipo01_partido && $golequipo02_prode==$golequipo02_partido)
	{
		$sql="update ranking set puntos=puntos+3 where id_usuario='".$id_usuario."' and ronda='".$ronda."'";
		$db->Execute($sql);
		echo "RANKING: ".$sql."<br>";
	}
	
	// cerramos el prode para ese partico y ese usuario
	$sql="update prodes set estado='C' where id_usuario='".$id_usuario."' and id_partido='".$id_partido."'";
	$recordset=$db->Execute($sql);
	echo "RANKING: ".$sql."<br>";
	
	$rs_prode->MoveNext();
}
$rs_prode->close();

 //Cerramos el partido
$sql="update partidos set estado='C' where id_partido='".$id_partido."'";
$db->Execute($sql);

$db->close();
?>