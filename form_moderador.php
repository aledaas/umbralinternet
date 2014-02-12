<?php
session_start ();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Invita a un Amigo</title>

<link rel="stylesheet" type="text/css" href="../../DHTML/dhtmlxCalendar/codebase/dhtmlxcalendar.css">
<link rel="stylesheet" type="text/css" href="../../DHTML/dhtmlxCalendar/samples/common/style.css">
<link rel="stylesheet" href="../../../interface/plugins/validate/_common/css/main.css" type="text/css" >
<link rel="stylesheet" type="text/css" href="../../../interface/plugins/validate/validate/validate.css">


<script> window.dhx_globalImgPath="system/DHTML/dhtmlxCalendar/codebase/imgs/"; </script>
<script src="../../DHTML/dhtmlxCalendar/codebase/dhtmlxcommon.js"></script>
<script src="../../DHTML/dhtmlxCalendar/codebase/dhtmlxcalendar.js"></script>

<script type="text/javascript" src="../../../interface/plugins/validate/_common/js/mootools.js"></script>
<script type="text/javascript" src="../../combos_dependientes/js/itoolkit.js"></script>
<script type="text/javascript" src="../../../interface/plugins/validate/utils/date-en-GB.js"></script>
<script type="text/javascript" src="../../../interface/plugins/validate/validate/validate.js"></script>


</head>
<body>
<body>
      	<div id="container"> 
		<div style="width:380px; border:1px; position:absolute; top: 19px;">
        <div id="example" style="background-color:#f8f8f8">
			<div id="validationMessage"></div>
		  <form id='myForm' action="" method="post">
          <img src=""
          <P>
          MODERADOR: <?PHP echo $_SESSION["id_usuario"].$_POST['action']; ?>
          </P>
			<p>
            <label for="nombre">Nombre de tu amigo:</label>
            <input id="nombre" name="nombre" title="Ingrese un nombre" type="text" class="required" style="width:170px" />
            </p> 
                    <label for="email">email</label>
            <input id="email" name="email" title="Ingrese un email" type="text" class="required email" style="width:170px"/>
            </p>
            <input type="submit" value="Invitar" id="submit" class="submit" />
            <input type="hidden" name="action" value="alta" />
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

</body>
</html>







<?php

if ( $_POST['action'] == 'alta' ) {

// enviar el email
$address = $_POST['email'];
require_once('system/phpmail/class.phpmailer.php');
include("system/phpmail/class.smtp.php"); 

$mail             = new PHPMailer();

$body = 'Estimado amigo,
					Te estoy invitando a participar de este prode, para el Mundial Sudáfrica 2010
					Podemos Jugar de manera gratuita o por dinero.-
					
					Tendremos nuestro propio grupo, y además podremos sumarnos a otros 
					
					Te acerco este link para que ingreses a registrarte
					
					Te espero tu amigo.-';

$mail->IsSMTP(); // telling the class to use SMTP
$mail->Host       = "mail.source-developers.com"; // SMTP server
//$mail->SMTPDebug  = 2;                     // enables SMTP debug information (for testing)
                                           // 1 = errors and messages
                                           // 2 = messages only
$mail->SMTPAuth   = true;                  // enable SMTP authentication
$mail->Host       = "mail.source-developers.com"; // sets the SMTP server
$mail->Port       = 25;                    // set the SMTP port for the GMAIL server
$mail->Username   = "pvazquez@source-developers.com"; // SMTP account username
$mail->Password   = "pvazquez";        // SMTP account password

$mail->SetFrom($_SESSION['session_admin'], 'First Last');

$mail->AddReplyTo($_SESSION['session_admin'],"First Last");

$mail->Subject    =  "Juga al prode Mundial junto a:".$_POST['moderador'];


$mail->MsgHTML($body);

$address = $_POST['email'];
$mail->AddAddress($address, "John Doe");


if(!$mail->Send()) {
  echo "Mailer Error: " . $mail->ErrorInfo;
} else {
  echo "Message sent!";
}

} else

{ 

}



?>