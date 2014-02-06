<?
session_start ();
include ("admin_user.class.php");
include ("mysql.inc");
include ("config.inc");

$admin = new admin_user;

if ($_SERVER["REQUEST_METHOD"] == "POST")
	{
	if ($admin->validate ($_POST["email"], $_POST["password"]))
		{
			// crear sesiones con datos del usuario registrado.-
			$_SESSION["session_admin"] = $admin->email_activo($_POST["password"], $_POST['email']);
			$_SESSION["session_perfil"] = $admin->perfil_activo($_POST["password"], $_POST['email']);
			$_SESSION["id_usuario"] = $admin->id_usuario_activo($_POST["password"], $_POST['email']);
			$_SESSION["id_grupo"] = $admin->grupo_activo($_POST["password"], $_POST['email']);	
		}
		
	}
	
	header ("Location: ../index.php");		
?>