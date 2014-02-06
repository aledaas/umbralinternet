<?php
session_start ();
include('conexion.php');
$db=Conectar();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registro</title>

<link rel="stylesheet" type="text/css" href="DHTML/dhtmlxCalendar/codebase/dhtmlxcalendar.css">
<link rel="stylesheet" type="text/css" href="DHTML/dhtmlxCalendar/samples/common/style.css">
<link rel="stylesheet" href="../interface/plugins/validate/_common/css/main.css" type="text/css" >
<link rel="stylesheet" type="text/css" href="../interface/plugins/validate/validate/validate.css">


<script> window.dhx_globalImgPath="system/DHTML/dhtmlxCalendar/codebase/imgs/"; </script>
<script src="DHTML/dhtmlxCalendar/codebase/dhtmlxcommon.js"></script>
<script src="DHTML/dhtmlxCalendar/codebase/dhtmlxcalendar.js"></script>

<script type="text/javascript" src="../interface/plugins/validate/_common/js/mootools.js"></script>
<script type="text/javascript" src="combos_dependientes/js/itoolkit.js"></script>
<script type="text/javascript" src="../interface/plugins/validate/utils/date-en-GB.js"></script>
<script type="text/javascript" src="../interface/plugins/validate/validate/validate.js"></script>


</head>
<body>
<center>
      
		<div style="width:480px; border:1px; position:relative; top: 19px;">
        <div id="example" style="background-color:#f8f8f8">
			<div id="validationMessage"></div>
		  <form id='myForm' action="" method="post">
	
        	<p><label for="Usuario">Usuario:</label><input id="usuario" name="usuario" title="Ingrese Un Usuario" type="text" class="required"  /></p>
            <p><label for="pass">contraseña:</label><input id="pass" name="pass" title="Ingrese una contraseña" type="text" class="required"  /></p>
            <p><label for="email">email:</label><input id="email" name="email" title="Ingrese un email" type="text" class="required email"/></p>
            <p>
              <label for="email">grupo:</label>
              <input id="grupo" name="grupo" title="Ingrese un nombre para su grupo" type="text" class="required "/></p>
          <!--  <p><label for="grupo">Grupo/Empresa</label>
            <?php
//			$sql = "select id_grupo, grupo, empresa from grupos_usuarios";
//			$rs=$db->Execute($sql);
//			echo '<select name="grupo">';
//			
//			while(!$rs->EOF)
//                    {
//						echo '<option value="'.$rs->fields['id_grupo'].'" >'.$rs->fields['grupo'].'</option>';
//						$rs->MoveNext();
//			}
//			$rs->close();
			?>
            
            </p> -->
            
            <input type="submit" value="Registrarse" id="submit" class="submit" />
            <input type="hidden" name="action" value="alta" />
            <!--<input type="hidden" name="grupo" value="3"  /> -->
            <input type="hidden" name="perfil" value="2" />
            <input type="hidden" name="referidopor" value="3" />
         </form>
		
			<script type="text/javascript">
				
			window.addEvent('domready', function(){
				var myFormValidation = new Validate('myForm',{
					errorClass: 'red'
				});
			});
			</script>
		</div>
     
        </div>
</center>
</body>
</html>

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
		
		$sql = "select empresa from grupos_usuarios where empresa='".$_POST['grupo']."'";
			$rs = $db->Execute($sql);
		if ($rs->RecordCount()>0)
			{
				echo "Este grupo ya existe !!!";
				$rs->close();
			}	
			else
			{
				$sql="select max(id_grupo) as max_id_grupo from grupos_usuarios";
				$rs = $db->Execute($sql);
				$max_id_grupo = $rs->fields['max_id_grupo']+1;
				$rs->close();
				
				$sql_grupo="insert into grupos_usuarios values ('".$max_id_grupo."',0,'".$_POST['grupo']."','".$_POST['grupo']."','','')";
				if($rs_grupo = $db->Execute($sql_grupo))
				{
			
				$sql = "insert into usuarios  
				(id_usuario ,usuario ,pass ,email ,id_grupo ,perfil ,referidopor ,LOGIN ,activo)
				VALUES
				(NULL ,
				 '".$_POST['usuario']."', 
				 '".$_POST['pass']."', 
				 '".$_POST['email']."', 
				 '".$max_id_grupo."', 
				 '".$_POST['perfil']."', 
				 '".$_POST['referidopor']."', 
				 NULL ,
				 'P');";

				//echo $sql;
				if($rs = $db->Execute($sql))
				{
											$sql_cons = "select id_usuario from usuarios where email = '".$_POST['email']."'";
						$rs_cons = $db->Execute($sql_cons);
						
						$id_usuario = $rs_cons->fields['id_usuario'];
						
							
						$address = $_POST['email'];
						require 'phpmailer/class.phpmailer.php';
						$mail = new mosPHPMailer();
					
						$mail->PluginDir = $mosConfig_absolute_path .'phpmailer/';
						$mail->SetLanguage( 'es', $mosConfig_absolute_path . 'phpmailer/language/' );
						$mail->CharSet 	= "iso-8859-1";
					
						$mail->IsHTML(true);
						$body = '<html>
					<head>
					<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
					</head>
					
					<body>
					<p>Estimado amigo,
											Te estamos invitando a participar de este prode, para el Mundial Sudáfrica 2010
																						
											Además, te ofrezco la posibilidad de Ser Moderador de tu grupo de amigos, para lo cual, al final de este email tendrás un código de invitación, el cual deberás copiar y pegar para cambiar tu perfil al de Moderador y con ello tener acceso a todas las posibilidades de ganar dinero extra haciendo divertir a tus amigos.- </p>
											<p>
											<a href="http://www.umbralinternet.com.ar/prodemundial/activa.php?id='.$id_usuario.'">Activar Usuario</a>			
											</p>			
											<p>Te espero tu amigo.-</p>
					</body>
					</html>
					';
						
						$mail->IsSMTP(); 
						$mail->SMTPAuth = true;
								$mail->Host       = "mail.umbralinternet.com.ar"; 
								$mail->Username   = "noreply@umbralinternet.com.ar ";     
								$mail->Password   = "noreply789";       
						$mail->From       = "noreply@umbralinternet.com.ar";
						$mail->FromName   = "ProdeMundial";
						$mail->AddAddress($_POST['email']);
						$mail->Subject    =  "Activa tu Cuenta en el Prode Mundial:";
						$mail->Body = $body;
						if(!$mail->Send()) {
							  echo "Mailer Error: " . $mail->ErrorInfo;
						} else {
						  echo ' <div id="example" style="background-color:#f8f8f8">';
					echo "te hemos enviado un email para activar tu cuenta !!!";
					echo '</div>';
						}
				
					}
					}	
				}
		}
	}	
	

}
 else
{ 

}

?>