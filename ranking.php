<?php
session_start ();
//include('conexion.php')
//$db = conectar();
include('system/conexion.php');
$db=Conectar();

// RANKING GRAL
$sql = "SELECT r.id_usuario, u.nombre, u.apellido, s.sucursal, SUM( r.puntos ) AS puntos
FROM ranking r, usuarios u, sucursales s
WHERE r.id_usuario = u.id_usuario
AND u.provincia = s.prov_codigo
GROUP BY 1 , 2, 3
ORDER BY 5 DESC , 2";
					
echo '
 <table width="100%"> 
    <tr>
    <td width="80%" valign="top">';
if($rs=$db->Execute($sql))
{
	
    echo '<table cellpadding="4" cellspacing="1" style="background-color:#666666; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px">

<tr style="background-color:#000000; color:#f8f8f8; " align="center">
				<td COLSPAN=3>RANKING GENERAL</td>
				
			</tr>';
	echo '<tr style="background-color:#000000; color:#f8f8f8; " align="center">
				<td>Jugador</td>
				<td>Sector</td>
				<td>Pts</td>
				
			</tr>';
	while(!$rs->EOF)
	{
		echo '<tr style="background-color:F8F8F8" align="center"><td>';
		//echo $rs->fields['id_usuario'];
		//echo '</td><td>';
		echo $rs->fields['nombre']." ".$rs->fields['apellido'];
		echo '</td><td>';
		echo $rs->fields['sucursal'];
		echo '</td><td>';
		echo $rs->fields['puntos'];
		echo '</td>';
		echo '</tr>';
		$rs->MoveNext();
	}	
		echo '</table>';	
}
else
{
echo 'Ranking Vac�o';
}		
$rs->close();


// RANKING LIBERTADORES
$sql = "SELECT r.id_usuario, u.nombre, u.apellido, s.sucursal, SUM( r.puntos ) AS puntos
FROM ranking r, usuarios u, sucursales s
WHERE r.id_usuario = u.id_usuario
AND r.torneo = 5
AND u.provincia = s.prov_codigo
GROUP BY 1 , 2, 3
ORDER BY 5 DESC , 2";
					
echo '
 <table width="100%"> 
    <tr>
    <td width="80%" valign="top">';
if($rs=$db->Execute($sql))
{
	echo '<table cellpadding="4" cellspacing="1" style="background-color:#666666; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px">
                        <tr style="background-color:#000000; color:#f8f8f8; " align="center">
				<td COLSPAN=3>RANKING LIBERTADORES</td>
				
			</tr>';
	echo '<tr style="background-color:#000000; color:#f8f8f8; " align="center">
				<td>Jugador</td>
				<td>Sector</td>
				<td>Pts</td>
				
			</tr>';
	while(!$rs->EOF)
	{
		echo '<tr style="background-color:F8F8F8" align="center"><td>';
		//echo $rs->fields['id_usuario'];
		//echo '</td><td>';
		echo $rs->fields['nombre']." ".$rs->fields['apellido'];
		echo '</td><td>';
		echo $rs->fields['sucursal'];
		echo '</td><td>';
		echo $rs->fields['puntos'];
		echo '</td>';
		echo '</tr>';
		$rs->MoveNext();
	}	
		echo '</table>';	
}
else
{
echo 'Ranking Vac�o';
}		
$rs->close();

// RANKING CHAMPION
$sql = "SELECT r.id_usuario, u.nombre, u.apellido, s.sucursal, SUM( r.puntos ) AS puntos
FROM ranking r, usuarios u, sucursales s
WHERE r.id_usuario = u.id_usuario
AND u.provincia = s.prov_codigo
AND r.torneo = 6
GROUP BY 1 , 2, 3
ORDER BY 5 DESC , 2";
					
echo '
 <table width="100%"> 
    <tr>
    <td width="80%" valign="top">';
if($rs=$db->Execute($sql))
{
	echo '<table cellpadding="4" cellspacing="1" style="background-color:#666666; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px">
			<tr style="background-color:#000000; color:#f8f8f8; " align="center">
				<td COLSPAN=3>RANKING CHAMPION</td>
				
			</tr>';
	echo'		<tr style="background-color:#000000; color:#f8f8f8; " align="center">
				<td>Jugador</td>
				<td>Sector</td>
				<td>Pts</td>
				
			</tr>';
	while(!$rs->EOF)
	{
		echo '<tr style="background-color:F8F8F8" align="center"><td>';
		//echo $rs->fields['id_usuario'];
		//echo '</td><td>';
		echo $rs->fields['nombre']." ".$rs->fields['apellido'];
		echo '</td><td>';
		echo $rs->fields['sucursal'];
		echo '</td><td>';
		echo $rs->fields['puntos'];
		echo '</td>';
		echo '</tr>';
		$rs->MoveNext();
	}	
		echo '</table>';	
}
else
{
echo 'Ranking Vac�o';
}		
$rs->close();
?>		