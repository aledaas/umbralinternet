<?php
session_start ();
$usuario=$_SESSION['usuario'];
$perfil=$_SESSION['perfil'];
include('system/conexion.php');
$db=Conectar();

$id_partido=$_GET['id_partido'];

$sql = "SELECT p.id_prode, p.id_usuario, u.nombre, u.apellido, p.golequipo01, p.golequipo02, p.fecha, p.hora 
	FROM prodes p, usuarios u
	WHERE 
	p.id_usuario = u.id_usuario
	and	year(fecha)= 2010 and id_partido = '".$id_partido."' and p.estado = 'C'";
	  
$rs_partido=$db->Execute($sql);
?>
 <table>
        <tr>
        <td>prode</td>
        <td>usuario</td>
        <td>nombre</td>
        <td>apellido</td>
        <td>golequipo01</td>
        <td>golequipo02</td>
        <td>fecha</td>
        <td>hora</td>
        </tr>
<?php

while(!$rs_partido->EOF)
{
	
	$sql2 = "select puntos from ranking where id_usuario='".$rs_partido->fields['id_usuario']."' ";
	$rs_ranking = $db->Execute($sql2);
	
	if ( $rs_ranking->fields['puntos'] > 0){
		$cont = $cont +1;
		?>
        <tr>
        <td><?php echo $rs_partido->fields['id_prode'];?></td>
        <td><?php echo $rs_partido->fields['id_usuario'];?></td>
        <td><?php echo $rs_partido->fields['nombre'];?></td>
        <td><?php echo $rs_partido->fields['apellido'];?></td>
        <td><?php echo $rs_partido->fields['golequipo01'];?></td>
        <td><?php echo $rs_partido->fields['golequipo02'];?></td>
        <td><?php echo $rs_partido->fields['fecha'];?></td>
        <td><?php echo $rs_partido->fields['hora'];?></td>
        <?php
		$sql="update ranking set puntos=puntos-3 where id_usuario='".$rs_partido->fields['id_usuario']."' ";
	}
	//$db->Execute($sql);
	//echo $cont . "-". $sql."<br>";
	$rs_partido->Movenext();
}
	$db->close();
?>