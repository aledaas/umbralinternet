<?php
session_start ();
$actual = $_SESSION["session_nivel"];
//conexion local
/*	$mysql_host = "localhost";
	$mysql_db = "cobragestion";
	$mysql_user = "root";
	$mysql_pwd = ""; */
//conexion web
	$mysql_host = "localhost";
	$mysql_db = "cobragestion";
	$mysql_user = "cbrgestion";
	$mysql_pwd = "cbrred08"; 


function db_connect (){
	global $mysql_host, $mysql_db, $mysql_user, $mysql_pwd;
	if (mysql_connect ($mysql_host,$mysql_user,$mysql_pwd))
		if (mysql_select_db ($mysql_db))
			return true;
		else
			return false;
	else
		return false;
}

db_connect ();
$sql = "SELECT M.ID, M.MODULOPADRE, M.MODULO from usuario_modulo U, modulos M ,grupos_usuarios B 
where U.MODULO = M.ID
AND U.grupo = $actual
AND M.MODULOPADRE = 0
group by M.MODULO 
ORDER BY M.ID
";
$query = @mysql_query($sql) or die("mySQL error: " . mysql_error());

echo "<?xml version='1.0' encoding='ISO-8859-1'?>
<menu>";

while ($db = mysql_fetch_array($query)) 
{
$modulopadre = $db['MODULOPADRE'];
$id = $db['ID'];
$titulo = $db['MODULO'];

	echo "<nodo label =\"$titulo\">";
	
						$sql1= "SELECT A.NAME, A.LINK from usuario_menu C, azmenumain A ,grupos_usuarios B 
				where C.menu = A.ID
				AND C.grupo = $actual
				AND A.MODULO = $id
				group by A.name
				ORDER BY A.ID
				";
		$query1 = @mysql_query($sql1) or die("mySQL error: " . mysql_error());
			while ($db1 = mysql_fetch_array($query1)) 
			{
				$opciones = $db1['NAME'];
				$link = $db1['LINK'];
				$opciones = stripslashes($opciones);
				$link = stripslashes($link);
				echo "<vinculo label =\"$opciones\" url=\"$link\"></vinculo>";
			}

	
		$sqlmodpadre = "SELECT M.ID, M.MODULOPADRE, M.MODULO from usuario_modulo U, modulos M ,grupos_usuarios B 
						where U.MODULO = M.ID
						AND U.grupo = $actual
						AND M.MODULOPADRE = $id
						group by M.MODULO 
						ORDER BY M.ID
						";
		$querymodpadre = @mysql_query($sqlmodpadre) or die("mySQL error: " . mysql_error());
			while ($dbmodpadre = mysql_fetch_array($querymodpadre)) 
					{
					$idpadre = $dbmodpadre['ID'];
					$titulopadre = $dbmodpadre['MODULO'];
					
					echo "<nodo label =\"$titulopadre\">";
	
						$sql1= "SELECT A.NAME, A.LINK from usuario_menu C, azmenumain A ,grupos_usuarios B 
								where C.menu = A.ID
								AND C.grupo = $actual
								AND A.MODULO = $idpadre
								group by A.name
								ORDER BY A.ID
								";
						$query1 = @mysql_query($sql1) or die("mySQL error: " . mysql_error());
							while ($db1 = mysql_fetch_array($query1)) 
							{
								$opciones = $db1['NAME'];
								$link = $db1['LINK'];
								$opciones = stripslashes($opciones);
								$link = stripslashes($link);
								echo "<vinculo label =\"$opciones\" url=\"$link\"></vinculo>";
							}
					echo"</nodo>";
					}		
		
	echo"</nodo>";
		}
	//echo "<vinculo label =\"SALIR\" url=\"logout.php\"></vinculo>";
echo"</menu>";
?>