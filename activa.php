<?php
session_start ();
include('system/conexion.php');
$db = conectar();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registro</title>

<link rel="stylesheet" type="text/css" href="system/DHTML/dhtmlxCalendar/codebase/dhtmlxcalendar.css">
<link rel="stylesheet" type="text/css" href="system/DHTML/dhtmlxCalendar/samples/common/style.css">
<link rel="stylesheet" href="interface/plugins/validate/_common/css/main.css" type="text/css" >
<link rel="stylesheet" type="text/css" href="interface/plugins/validate/validate/validate.css">


<script> window.dhx_globalImgPath="system/DHTML/dhtmlxCalendar/codebase/imgs/"; </script>
<script src="system/DHTML/dhtmlxCalendar/codebase/dhtmlxcommon.js"></script>
<script src="system/DHTML/dhtmlxCalendar/codebase/dhtmlxcalendar.js"></script>

<script type="text/javascript" src="interface/plugins/validate/_common/js/mootools.js"></script>
<script type="text/javascript" src="system/combos_dependientes/js/itoolkit.js"></script>
<script type="text/javascript" src="interface/plugins/validate/utils/date-en-GB.js"></script>
<script type="text/javascript" src="interface/plugins/validate/validate/validate.js"></script>


</head>
<body>

     <?php

		if ( $_GET['id'])
			 {
			
					$sql = "update usuarios set activo = 'A' where id_usuario= '".$_GET['id']."' ";
					
					if ($rs=$db->Execute($sql))
						{
		?>	
	  
<div style="width:480px; border:1px; position:absolute; top: 19px; left:350px">
			Su cuenta ha sido activada !!!<br />
    Haga clic <a href="http://200.0.230.242:7030/copaamerica2011/">aquí</a> si esta a fuera de las oficinas<br />
		o <a href="http://192.168.0.34/copaamerica2011/">aquí</a> si esta dentro de nuestras oficinas<br />
ingrese en los cuadros de arriba, colocando su email y su contraseña.-<br />
            MUCHA SUERTE !!!
            
</div>
		<?php 		}
			}
		?>
</body>
</html>

