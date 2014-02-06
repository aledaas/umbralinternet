<?php
session_start ();
include ("system/conexion.php");
include ("system/admin_user.class.php");
$db=Conectar();

require 'system/facebook-php-sdk-master/src/facebook.php';


$facebook = new Facebook(array(
  'appId'  => '224379811082880',
  'secret' => '828cea338eb6198d8cf02083532c6acc',
));

$user = $facebook->getUser();
if ($user) {
  try {
    // Proceed knowing you have a logged in user who's authenticated.
    $user_profile = $facebook->api('/me');
  } catch (FacebookApiException $e) {
    error_log($e);
    $user = null;
  }
}

if ($user) {
  try {
    $user_profile = $facebook->api('/me');
  } catch (FacebookApiException $e) {
    error_log($e);
    $user = null;
  }
}

if ($user) {
  $logoutUrl = $facebook->getLogoutUrl();
} else {
  $loginUrl = $facebook->getLoginUrl();
}



$usuario=$user_profile['id'];
$fecha=date("Y-m-d",time());
$hora=date(H);
$minuto=date(i);
$ronda = $_GET['ronda'];
$torneo = $_GET['torneo'];
$hora2=date(H);
$horaminuto2=$hora2.":".$minuto;


//$admin_user = new admin_user;
//if (!$admin_user->active ()) header ("Location: system/logout.php");

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
 <!--<pre><?php //print_r($user_profile['id']); ?></pre> -->

<form action="" method="post">
<?php


echo '
 <table width="100%">
    <tr>
    <td width="40%" valign="top">
';
echo '<table cellpadding="3" cellspacing="1" style="background-color:#666666; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px">
		<tr style="background-color:#000000; color:#f8f8f8; " align="center">
		
	
			<td>fecha</td>
			<td>hora</td>
	
			<td colspan=4>Partido</td>
		</tr>';


		

	$sql_mi_prode = "select distinct id_prode from prodes where id_usuario = ".$usuario." and ronda=".$ronda." and torneo= ".$torneo." ";
        //print($sql_mi_prode);die;
	$result_mi_prode = mysql_query($sql_mi_prode);
	
        while ($result_tuprode = mysql_fetch_array($result_mi_prode))
	{
//	echo "Tu prode es el Nro:".$result_tuprode['id_prode']." escribe cada resultado y luego presiona la tecla ENTER para almacenar los cambios, SUERTE !!!<br>";
        $id_miprode = $result_tuprode['id_prode'];
        }

	if ($_POST['partido'])
	{
            
		$mi_prode = count($_POST['partido']) ? $_POST['partido'] : array();
		$mi_goleq01 = count($_POST['goleq01']) ? $_POST['goleq01'] :array();
		$mi_goleq02 = count($_POST['goleq02']) ? $_POST['goleq02'] :array();
		
		foreach($mi_prode as $c=>$v)
		{
		 	$sql="select golequipo01,golequipo02 
				  from prodes where id_prode=".$id_miprode." and id_partido=".$v ;
		//	echo $sql."<br>";
			$result_goles_prode = mysql_query($sql);
			$result_goles_prode = mysql_fetch_array($result_goles_prode);
			$old_golequipo01=$result_goles_prode['golequipo01'];
			$old_golequipo02=$result_goles_prode['golequipo02'];
			
			if($id_miprode==10)
			{
				echo $old_golequipo01."|".$mi_goleq01[$c]." - ".$old_golequipo02."|".$mi_goleq02[$c]."<br>";
			}
			
			$sql="select fecha,hora 
				  from partidos where id_partido=".$v ;
			$result_partido = mysql_query($sql);
			$result_partido = mysql_fetch_array($result_partido);
			$fecha_partido=$result_partido['fecha'];
			$hora_partido=$result_partido['hora'];
		
			$new_fecha=date("Y-m-d",time());
			$new_horaminuto=date(H).":".date(i);
			
			if( ($new_fecha<$fecha_partido) || ($new_fecha==$fecha_partido && $new_horaminuto<=$hora_partido) )
			{
				if($old_golequipo01<>$mi_goleq01[$c] || $old_golequipo02<>$mi_goleq02[$c])
				{
					$sql_guarda_prode = "update prodes set golequipo01=".$mi_goleq01[$c].",  
										 golequipo02=".$mi_goleq02[$c].", 
										 fecha='".$new_fecha."',hora='".$new_horaminuto."'  
										 where id_prode = ".$id_miprode." and id_partido = $v ";
					//echo $sql_guarda_prode;
                                            if($result_tuprode['id_prode']==10)
					{
						echo $sql_guarda_prode. "<br>";
					}
					
					mysql_query($sql_guarda_prode);
				}
			}
		}		
	}


	$sql_tuprode = "select p.id_partido, p.grupo, p.fecha, p.hora, p.lugar, p.equipo01, p.equipo02, pp.golequipo01, pp.golequipo02, pp.id_usuario, pp.estado 
	from partidos p, prodes pp
	where pp.id_partido = p.id_partido
	and pp.id_usuario = ". $usuario." 
	and pp.ronda in ('". $ronda."')
        and pp.torneo in('".$torneo."')    
	order by p.fecha";
	//echo $sql_tuprode."<br>";
	$result = mysql_query($sql_tuprode);
	while ($row = mysql_fetch_array($result))
	{
		echo '<tr style="background-color:F8F8F8" align="center"><td>';
		echo $row['fecha'];
		echo '</td><td>';
		echo $row['hora'];
		echo '</td><td align="left" valign="middle">';
		echo traer_equipo_1($row['equipo01']);
		echo '</td><td>';
		echo '<input name="partido[]" id="'.$row['id_partido'].'" type="hidden" size="1" maxlength="2" value= '.$row['id_partido'].' />';

		//if( ($fecha >= $row['fecha'])  )
                if( ($row['estado']) == 'C' )    
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
		
		echo '</td><td align="right" valign="middle">';
		echo traer_equipo_2($row['equipo02']);
		echo '</td></tr>';
	} 
	
	echo '</td><tr>';
	echo '<td colspan="8"> <input type="submit" value="Guardar Prode" class="button" name="submit" / <td></tr>';
	
	echo '</table>';
	echo '</form';


function traer_equipo_1($equipo)
{
	conectar();
	$sql1 = "select equipo, escudo from equipos where id_equipo = ".$equipo ;
	$result1 = mysql_query($sql1);
	$row1 = mysql_fetch_array($result1);
	$equipo = '<img src="images/'.$row1['escudo'].'" style="width:35px;" >&nbsp;&nbsp;'.$row1['equipo'];
	return $equipo;
}
function traer_equipo_2($equipo)
{
	conectar();
	$sql_2 = "select equipo, escudo from equipos where id_equipo = ".$equipo ;
	$result_2 = mysql_query($sql_2);
	$row_2 = mysql_fetch_array($result_2);
	$equipo = $row_2['equipo'].'&nbsp;&nbsp;<img src="images/'.$row_2['escudo'].'" style="width:35px;" >';
	return $equipo;
}
?>
