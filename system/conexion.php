<?php

include('adodb/adodb.inc.php');
include("adodb/adodb-exceptions.inc.php"); 

function Conectar()
{
//include('adodb/adodb.inc.php');
//include("adodb/adodb-exceptions.inc.php"); 
$driver='mysql';
$db = ADONewConnection($driver); # ej. 'mysql' o 'oci8' 
//debug= muestra consulta a ejecutar
//$db->debug = true;
$server='localhost';
$user='root';
$password='host789mysql';
$database='prode_main';

//$server='latinme1.mydomaincommysql.com';
//$user='prodes_me';
//$password='$Pr5d2s2014';
//$database='prodes_me';	
$db->Connect($server, $user, $password, $database);
return $db;
}

?>