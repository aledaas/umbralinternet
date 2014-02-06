<?php
/////////////////////////////////////////////////////////////
//
// Clase USER modificada para administrador exclusivamente
//
/////////////////////////////////////////////////////////////

class admin_user
	{
	var $password;
	
	
	var $mysql_table = "usuarios";
	
	var $crypt_key = "lm"; // Semilla de generacion de encriptacion para el password
	
		
// Valida la info del password. Normalmente se usa en el login


function validate ($email, $password)
	{
	db_connect ();
	$_SESSION["mensaje"] = "";
	$sql = "select email, pass from {$this->mysql_table} where email='".$email."' and pass = '".$password."' and activo = 'A'";
		$result = mysql_query ($sql);
		
	if ($row = mysql_fetch_array($result))
		{
					if ($row['pass'] == $password)
						{
							$_SESSION["mensaje"] = "Ud. ingreso a su prode";
							return true;
						}
						else
						{
							$_SESSION["mensaje"] = "la clave es incorrecta";
							return false;
						}
		}
	$_SESSION["mensaje"] = "NO ESTA ACTIVA TU CUENTA";
	//$_SESSION["mensaje"] = $sql;
	
	return false;
	}

	function email_activo($password, $email)
	{
		$query = "select email from {$this->mysql_table} where pass='".$password."' and email='".$email."'" ;
		$result = mysql_query ($query);
		$activo = mysql_fetch_array($result);
		return $activo['email'];
	}	
		function razon_activo($password, $email)
	{
		$query = "select nombre from {$this->mysql_table} where clave='".$password."' and email='".$email."'";
		$result = mysql_query ($query);
		$activo = mysql_fetch_array($result);
		return $activo['nombre'];
	}	

	function perfil_activo($password, $email)
	{

		$query = "select perfil from {$this->mysql_table} where pass='".$password."' and email='".$email."'";
		$result = mysql_query ($query);
		$activo = mysql_fetch_array($result);


		$query2 = "select Perfil from perfiles  where id_perfil=".$activo["perfil"];
		$result2 = mysql_query ($query2);
		$activo2 = mysql_fetch_array($result2);

		return $activo2["Perfil"];
	}	
	function id_usuario_activo($password, $email)
	{
		
		$query = "select id_usuario from {$this->mysql_table} where pass='".$password."' and email='".$email."'";
		$result = mysql_query ($query);
		$activo = mysql_fetch_array($result);
		return $activo['id_usuario'];
	}	
	function grupo_activo($password, $email)
	{
		$query = "select id_grupo from {$this->mysql_table} where pass='".$password."' and email='".$email."'";
		$result = mysql_query ($query);
		$activo = mysql_fetch_array($result);
		return $activo["id_grupo"];
	}	
	
	function desc_grupo ($grupo)
	{
		$query = "select grupo from grupos_usuarios where id_grupo='".$grupo."'";
		$result = mysql_query ($query);
		$activo = mysql_fetch_array($result);
		return $activo['grupo'];
	}
		
// Valida que haya un usuario activo (no importa cual sea)
	function active ()
		{
	
		if (isset ($_SESSION["session_admin"]))
			return true;
		else
			return false;
		}
		
// Muestra un boton de LOGIN si no hay nadie logueado, o de LOGOUT en el otro caso
	function loginbutton ()
		{
		if (!$this->active ())
			{
			$this->loginform ();
			}
		else
			{
			$this->logoutform ();
			}
		}
		
// Muestra el formulario de Login
	function loginform ()
		{
		?>
		
		<form action="system/login.php"  name="login" method="post" autocomplete="off">
			<label>	Email</label>
      				<input class="input_field" type="text" id="email" name="email" />
                                <label>Contrase&ntilde;a</label>
					<input class="input_field" type="password" name="password" maxlength="15" />
				  <input type="submit" alt="Ingresar" title="ir" value="ir" border="0" align="absmiddle" class="normal_button"/>
		</form>
		<?php
		}

// Muestra el boton de cerrar sesion
	function logoutform ()
		{
		?>
		<a href="system/logout.php">
		Salir
		</a>
		<?php
		}
	}
?>