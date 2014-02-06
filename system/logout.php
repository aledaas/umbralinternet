<?
session_start();
if (isset ($_SESSION["session_admin"]))
	{
	//session_destroy ();
	unset ($_SESSION["session_admin"]);
	unset ($_SESSION["session_nivel"]);
	unset ($_SESSION["session_codcli"]);
	unset ($_SESSION["inicio"]);
	unset ($_SESSION["mensaje"]);
	unset ($_SESSION["mensaje2"]);
	unset ($_SESSION["mensaje3"]);
	}

header ("Location: ../");
exit;
?>