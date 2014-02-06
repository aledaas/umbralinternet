<?php
session_start ();
include('conexion.php');
$db = conectar();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registro</title>

<link rel="stylesheet" href="../interface/plugins/validate/_common/css/main.css" type="text/css" >
<link rel="stylesheet" type="text/css" href="../interface/plugins/validate/validate/validate.css">


<script type="text/javascript" src="../interface/plugins/validate/_common/js/mootools.js"></script>

<script type="text/javascript" src="../interface/plugins/validate/utils/date-en-GB.js"></script>
<script type="text/javascript" src="../interface/plugins/validate/validate/validate.js"></script>
<script type="text/javascript" src="combos/js/itoolkit.js"></script>

<script>
window.addEvent('load', PageLoad);
function PageLoad()
{
	//new iToolkit.ComboEnlazado(hijo, padre, servicioDeDatos);
	new iToolkit.ComboEnlazado("provincia", "torneo", "combos/services/GetProvincias.php");
	new iToolkit.ComboEnlazado("grupo", "provincia", "combos/services/GetGrupos.php");
	//new iToolkit.ComboEnlazado("cboCiudad", "cboProvincia", "services/GetCiudadesPorProvincia.php");
}
</script>
</head>
<body>

      
		<div style="width:450px; border:1px; position:absolute; top: 19px; left:350px">
        <div id="example" style="background-color:#f8f8f8">
			<div id="validationMessage"></div>
		  <form id='myForm' action="" method="post">
	<p><label for="Nombre">Nombre:</label><input id="nombre" name="nombre" title="Ingrese Un Nombre" type="text" class="required" style="width:200px;" /></p>
    <p><label for="Apellido">Apellido:</label><input id="apellido" name="apellido" title="Ingrese Un Apellido" type="text" class="required" style="width:200px;" /></p>
    <p></p>
        	<p><label for="Usuario">Usuario:</label><input id="usuario" name="usuario" title="Ingrese Un Usuario" type="text" class="required"  /></p>
            <p><label for="pass">contraseña</label><input id="pass" name="pass" title="Ingrese una contraseña" type="text" class="required"  /></p>
            <p><label for="email">email</label><input id="email" name="email" title="Ingrese un email" type="text" class="required email" style="width:200px;"/></p>
            
           <p><label for="grupo">Torneo</label><br />

            <?php
				$sql = "select id_torneo, torneo from torneos order by 2 DESC";
				$rs = $db->Execute($sql);
				echo '<select name="torneo" id="torneo" width="30" title="debe elegir un torneo..." class="required">';
				echo '<option value="" selected="selected">Seleccione...</option>';
				while (!$rs->EOF) 
					{	
						echo "<option value=".$rs->fields['id_torneo'].">".$rs->fields['torneo']."</option>";
						$rs->MoveNext();
					}
					echo '</select> ';
					$rs->Close();
			?>
            
            </p>
            <p><label for="address">Provincia:</label><br />

             <select name="provincia" id="provincia"  width="30" title="Seleccione una Provincia..." class="required">
     			 </select>
            </p>
              <p><label for="address">Grupo:</label><br />

             <select name="grupo" id="grupo"  width="30" title="Seleccione un Grupo..." class="required">
     			 </select>
            </p>
            <input type="submit" value="Registrarse" id="submit" class="submit" />
            <input type="hidden" name="action" value="alta" />
         <!--   <input type="hidden" name="grupo" value="3"  />-->
            <input type="hidden" name="perfil" value="5"  />
            
         </form>
		
			<script type="text/javascript">
				
			window.addEvent('domready', function(){
				var myFormValidation = new Validate('myForm',{
					errorClass: 'red'
				});
			});
			</script>


<?php

if ( $_POST['action'] == 'alta' ) {
	
	$sql = "select usuario from usuarios where usuario = '".$_POST['usuario']."' ";
	$rs=$db->Execute($sql);
	
	//echo $sql."<br>";
	
	if ($rs->RecordCount()>0)
	{
		echo "Usuario Existente !!!";
		$rs->close();
	}
	else
	{
		$sql ="select email from usuarios where email='".$_POST['email']."' ";	
			$rs = $db->Execute($sql);
		if ($rs->RecordCount()>0)
		{
			echo "Email ya registrado !!!";
			$rs->close();
		}
		else
		{	
				$fecha=date("Y-m-d", time());
				$hora=date("h:i",time());
				
				$sql = "insert into usuarios  
				(id_usuario ,usuario ,pass ,email ,id_grupo ,perfil ,referidopor ,LOGIN ,activo, nombre, apellido, provincia, fecha, hora)
				VALUES
				(NULL , '".$_POST['usuario']."', '".$_POST['pass']."', '".$_POST['email']."', '".$_POST['grupo']."', '".$_POST['perfil']."', '0', NULL , 'P', '".$_POST['nombre']."','".$_POST['apellido']."','".$_POST['sucursal']."','".$fecha."' ,'".$hora."' );";

				//echo $sql;
				if($rs = $db->Execute($sql))
				{
						$sql_cons = "select id_usuario from usuarios where email = '".$_POST['email']."'";
						$rs_cons = $db->Execute($sql_cons);
	
						$id_usuario = $rs_cons->fields['id_usuario'];
						

						
						
						$body = '<html>
						<head>
						<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
						</head>
						
						<body>
						<p>Estimado Compañero, </p>
												<p>Gracias por registrarte en TuProde.com</p>
																							
												<p>copia y pegá el siguiente link en tu navegador para activar tu cuenta: </p>
												<p>
												http://www.tuprode.com/activa.php?id='.$id_usuario.'			
												</p>			
												<p>Mucha suerte !!!</p>
						</body>
						</html>';
			
						$para = $_POST['email'];
						$desde = "prodes@tuprode.com";
						$desde_nombre = "TuProde.com ";
						$asunto = "Completá tu Registro:".$_POST['moderador'];
					
						if (enviar_email($desde,$desde_nombre,$para, $asunto, $body))
						{
							 echo ' <div id="example" style="background-color:#f8f8f8">';
							echo "te hemos enviado un email para activar tu cuenta !!!";
							echo '</div>';
						}
						else
						{
							// echo ' <div id="example" style="background-color:#f8f8f8">';
								echo "no anduvo";
						//	echo '</div>';
						}
				}
		}
	}
}
?>
		</div>
     
        </div>

</body>
</html>
<?php
function enviar_email($desde="prodes@tuprode.com", $desde_nombre="TuProde", $para, $asunto, $cuerpo)
{
require '/usr/local/pem/vhosts/268341/webspace/httpdocs/system/phpmail/class.phpmailer.php';
	$mail = new PHPMailer();
	$mail->PluginDir = '/usr/local/pem/vhosts/268341/webspace/httpdocs/system/phpmail/';
	$mail->SetLanguage( 'es', '/usr/local/pem/vhosts/268341/webspace/httpdocs/system/phpmail/language/' );
	//$mail->CharSet 	= substr_replace(_ISO, '', 0, 8);
	$mail->IsSMTP();
	$mail->IsHTML(true);

		$mail->SMTPAuth = true;
		$mail->Host       = "mail18.mydomainwebhost.com"; 
		$mail->Username   = "prodes@tuprode.com";     
		$mail->Password   = "prodes123";            

	$mail->From       = $desde;
	$mail->FromName   = $desde_nombre;
	$mail->AddAddress($para);

	$mail->Subject  = $asunto;
	$mail->WordWrap   = 80; // set word wrap

	//	$mail->Subject 	= $subject;
	$mail->Body 	= $cuerpo;

	if($mail->Send()){
	return true;
	}
	else
	{
	return false;
	}
}

?>