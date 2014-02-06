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
$sql="SELECT u.sucursal as sucursal , s.sucursal as des_sucursal, sum(r.puntos) as puntos
FROM ranking r, usuarios u, sucursales s
WHERE r.id_usuario = u.id_usuario
and u.sucursal = s.prov_codigo
group by 1,2
ORDER BY 3 desc";

// Extraer puntos en Juego
	$sql_puntosenjuego = "select count(*) as puntosenjuego from partidos where estado = 'C'";
	$rs_puntosenjuego = $db->Execute($sql_puntosenjuego);
	$puntosenjuego = 3 * $rs_puntosenjuego->fields['puntosenjuego'];
//fin
	  
$rs_sucursal=$db->Execute($sql);
		echo '<table cellpadding="2" cellspacing="1" style="background-color:#666666; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px">
			<tr style="background-color:#000000; color:#f8f8f8; " align="center">
				<td>Sucursal</td>
				<td>Ptos</td>
				<td>Jug</td>
				<td>PtosEnJ</td>
				<td>PtosXJug</td>
				<td>Efectividad</td>
				
			</tr>';
			

while (!$rs_sucursal->EOF)
{
$sql="SELECT count(usuario) as usuario from usuarios where sucursal = '".$rs_sucursal->fields['sucursal']."' ";
$rs_usuario=$db->Execute($sql);
	
	$totalpuntosxsuc = $puntosenjuego * $rs_usuario->fields['usuario'];
	$efectividad =  intval($rs_sucursal->fields['puntos']) / $totalpuntosxsuc;
	$efectividad2 =  round($rs_sucursal->fields['puntos'] / $totalpuntosxsuc * 100, 2);
	
	echo '<tr style="background-color:F8F8F8"><td>';
		//echo $rs->fields['id_usuario'];
		//echo '</td><td>';
		echo $rs_sucursal->fields['des_sucursal'];
		echo '</td><td>';
		echo $rs_sucursal->fields['puntos'];
		echo '</td><td align="right">';
		echo $rs_usuario->fields['usuario'];
		echo '</td><td align="right">';
		echo $puntosenjuego;
		echo '</td><td align="right">';
		echo $totalpuntosxsuc;
		echo '</td><td align="right">';
		echo number_format($efectividad2,2) ."%";
		echo '</td>';

		echo '</tr>';
		
	$rs_sucursal->MoveNext();
}
echo '</table>';
$rs_sucursal->close();
$db->close();
?>