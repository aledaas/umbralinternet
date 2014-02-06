<?
/////////////////////////////////////////////////////////////
//
// Clase user
//		Manejo de Altas, Bajas, Modificaciones, Envios de emails
//
/////////////////////////////////////////////////////////////

class user
	{
	var $clave;
	var $usuario;
	var $email;

	var $mysql_table = "usuarios";
	var $user_id;

function user ()
		{
			return true;
		}

// Agrega un usuario
var $id;
			// base = id_usuario_face, usuario, email, 	nombre, 	apellido,  fb_location_id, fb_location_name, sexo
			//	face = id, 				username, email, 	first_name, last_name, location[id], location[name], gender
 
function add_fb ( $id,$username,$email,$fr_name,$ls_name,$fb_location_id,$fb_location_name,$gender)
		{
			db_connect();

			$query = "select email, id_usuario_face from {$this->mysql_table} where email='$email' and id_usuario_face = '$id' ";
			$result = mysql_query ($query);
			if ($row = mysql_fetch_array($result))
				{
				$GLOBALS["error"] = "El email: ".$row["email"]." ya es usuario";
				return false;
				}else{
					$GLOBALS["error"] = "El email: ".$row["email"]." no es usuario";
				}
				
			mysql_query ("lock tables {$this->mysql_table} write");
			
			$date = date ("Y-m-d");
			$id_grupo = 3;
			$perfil = 5;
			$referidopor = 1;
			$activo = 'A';
			$provincia = 'SYT';

			
			$query = "insert into {$this->mysql_table} (
						id_usuario_face,usuario,pass,email,id_grupo,perfil,referidopor,activo,nombre,apellido, provincia, fb_location_id, fb_location_name, sexo
				) values (
						'$id', '$username','$username','$email','$id_grupo','$perfil','$referidopor','$activo','$fr_name','$ls_name','$provincia', '$fb_location_id', '$fb_location_name', '$gender'
				)";
			if (mysql_query ($query))
				{
				mysql_query ("unlock tables");
				$GLOBALS["error"] = "Nuevo usuario";
				return true;
				}
			mysql_query ("unlock tables");
			$GLOBALS["error"] = "No se ha podido agregar el registro";
			return false; 
		}

function add ( $email,$nombre,$nivel,$Deposito,$Registrado,$Asociado,$clave,$activo,$id_grupo,$dependode)
		{
		db_connect ();

		$query = "select email from {$this->mysql_table} where email='$email'";
		$result = mysql_query ($query);
		if ($row = mysql_fetch_array($result))
			{
			$GLOBALS["error"] = "El email: ".$row["email"]." ya es usuario";
			return false;
			}

		mysql_query ("lock tables {$this->mysql_table} write");
		
		$date = date ("Y-m-d");
		
		$query = "insert into {$this->mysql_table} (
					email,nombre,nivel,Deposito,Registrado,Asociado,clave,activo,id_grupo,dependode
			) values (
				'$email','$nombre','$nivel','$Deposito','$Registrado','$Asociado','$clave','$activo','$id_grupo','$dependode'
				
			)";
		if (mysql_query ($query))
			{
			mysql_query ("unlock tables");
			$GLOBALS["error"] = "Registro agregado";
			return true;
			}
		mysql_query ("unlock tables");
		$GLOBALS["error"] = "No se ha podido agregar el registro";
		return false;
		}
		
// Elimina un usuario
	function del ($id=0)
		{
				db_connect ();
		if ($id == 0)
			{
			$GLOBALS["error"] = "No se ha especificado el ID de usuario";
			return false;
			}
		if (!$this->getdata ($id))
			{
			$GLOBALS["error"] = "No se ha encontrado el registro o hay un error en la base de datos";
			return false;
			}
		
		$query = "delete from {$this->mysql_table} where id=$id";
		if (!mysql_query ($query))
			{
			$GLOBALS["error"] = "Ha habido un error al eliminar el registro";
			return false;
			}
		$GLOBALS["error"] = "Se ha eliminado el registro";
		return true;
		}
	
// Actualiza los datos de usuario
	function update ($email,$nombre,$nivel,$Deposito,$Registrado,$Asociado,$clave,$activo,$id_grupo)
		{
		//campos de la tabla usuarios
			// email,nombre,nivel,Deposito,Registrado,Asociado,clave,activo,id_grupo,dependode
			// $email,$nombre,$nivel,$Deposito,$Registrado,$Asociado,$clave,$activo,$id_grupo,$dependode

		db_connect ();
		$query = "select id from {$this->mysql_table} where email='$email'";
		$result = mysql_query ($query);
		if (mysql_num_rows ($result) > 0)
			{
			$GLOBALS["error"] = "El nombre de usuario ya existe";
			return false;
			}
		if ($this->getdata ($id))
			{
			$query = "update {$this->mysql_table} set 
					screenname = '$screenname',
					site = '$site',
					name = '$name',
					address = '$address',
					city = '$city',
					state = '$state',
					country = '$country',
					zip = '$zip',
					phone = '$phone',
					email = '$email',
					icq = '$icq',
					msn = '$msn',
					genre = '$genre',
					pay_name = '$pay_name',
					pay_address = '$pay_address',
					pay_city = '$pay_city',
					pay_state = '$pay_state',
					pay_country = '$pay_country',
					pay_zip = '$pay_zip',
					pay_phone = '$pay_phone',
					pay_email = '$pay_email',
					pay_icq = '$pay_icq',
					pay_msn = '$pay_msn',
					min_ammount = $min_ammount,
					payment_method = '$payment_method',
					bank = '$bank',
					bank_account = '$bank_account',
					bank_swift = '$bank_swift',
					bank_address = '$bank_address'
				where id=$id";
			if (mysql_query ($query) and $this->getdata ($id))
				{
				$GLOBALS["error"] = "Se actualizo el registro";
				return true;
				}
			$GLOBALS["error"] = "No se pudo actualizar el registro";
			return false;
			}
		else
			{
			$GLOBALS["error"] = "No se encontro el usuario";
			return false;
			}
		}


// Devuelve la lista de usuarios registrados
	function getlist ($cant=0, $offset=0,$user_id)
		{
		//campos de la tabla usuarios
			// email,nombre,nivel,Deposito,Registrado,Asociado,clave,activo,id_grupo,dependode
			// $email,$nombre,$nivel,$Deposito,$Registrado,$Asociado,$clave,$activo,$id_grupo,$dependode

		db_connect ();

		settype ($cant, "integer");
		settype ($offset, "integer");

		$query = "select id from {$this->mysql_table}  order by email ";
		if ($cant > 0)
			$query .= " limit $offset,$cant";
		$result = mysql_query ($query);
		if (@mysql_num_rows ($result) < 1)
			{
			$GLOBALS["error"] = "TODAVÍA NO TIENES USUARIOS, COMIENZA AGREGARLOS LUEGO VE A LA SECCION EMAILS";
			return false;
			}
		while (list ($id) = mysql_fetch_row ($result))
			$listado[] = $id;
			
		$this->list_total = $this->gettotal ();
		return $listado;
		}

// Search function
	function search ($searchString, $field="username", $cant=0, $offset=0)
		{
		if (!db_connect ())
			{
			$GLOBALS["error"] = "Error de conexion a base de datos: ".mysql_error ();
			return false;
			}
		
		$searchCondition = "where $field like '%$searchString%'";

		$query = "select idusuario from {$this->mysql_table} $searchCondition order by nombre";

		settype ($cant, "integer");
		settype ($offset, "integer");
		
		if ($cant > 0)
			$query .= " limit $offset,$cant";

		$result = mysql_query ($query);
		if (!$result)
			{
			$GLOBALS["error"] = "Error de consulta a base de datos: ".mysql_error ()."<br />Consulta: $query";
			return false;
			}
		if (mysql_num_rows ($result) < 1)
			{
			$GLOBALS["error"] = "Registro no encontrado";
			return false;
			}
		
		while (list ($id) = mysql_fetch_row ($result))
			$return_list[] = $id;
		
		$query = "select count(*) from {$this->mysql_table} $searchCondition";
		list ($this->list_total) = mysql_fetch_row (mysql_query ($query));

		$GLOBALS["error"] = "Obtenida lista de registros";
		return $return_list;
		}
	
// Inicializa un usuario (no quiere decir que se loguee, es simplemente para manejar los datos del objeto)
	function getdata ($id)
		{
			//campos de la tabla usuarios
			// email,nombre,nivel,Deposito,Registrado,Asociado,clave,activo,id_grupo,dependode
			// $email,$nombre,$nivel,$Deposito,$Registrado,$Asociado,$clave,$activo,$id_grupo,$dependode
		db_connect ();

		if (!is_int ($id))
			settype ($id, "integer");
	
		$query = "select * from {$this->mysql_table} where id=$id";
		$result = mysql_query ($query);
		if (mysql_num_rows ($result) != 1)
			{
			$GLOBALS["error"] = "No se ha encontrado el registro o hay un error en la base de datos";
			return false;
			}
		$data = mysql_fetch_array ($result);
		$this->id = $id;
		$this->email = $data["email"];
		$this->nombre = $data["nombre"];
		$this->nivel = $data["nivel"];
		$this->Deposito = $data['Deposito'];
		$this->Registrado = $data['Registrado'];
		$this->Asociado = $data['Asociado'];
		$this->clave = $data['clave'];
		$this->activo = $data['activo'];
		$this->id_grupo = $data['id_grupo'];

		$GLOBALS["error"] = "Se ha inicializado el usuario {$this->username}";
		return true;
		}
		
// Recupera el id de usuario a partir de la clave o el email
	function get_user_id($email)
		{
			//campos de la tabla usuarios
			// email,nombre,nivel,Deposito,Registrado,Asociado,clave,activo,id_grupo,dependode
			// $email,$nombre,$nivel,$Deposito,$Registrado,$Asociado,$clave,$activo,$id_grupo,$dependode

		db_connect ();
		$query = "select id from {$this->mysql_table} where email='$email'";
		$result = mysql_query ($query);
		if (@mysql_num_rows ($result) != 1)
			{
			$GLOBALS["error"] = "No se encontro el usuario";
			return false;
			}
		else
			{
			list ($id) = mysql_fetch_row ($result);
			$GLOBALS["error"] = "Se obtuvo el id del usuario $username";
			return $id;
			}
		}

// Valida la info de username y password. Normalmente se usa en el login
	function validate ($username,$password)
		{
		db_connect ();
		$query = "select id from {$this->mysql_table} where username='$username' or screenname='$username'";
		$result = mysql_query ($query);
		if (@mysql_num_rows ($result) != 1)
			{
			$GLOBALS["error"] = "No se ha encontrado el usuario o hay un error en la base de datos: $query: ".mysql_error ();
			return false;
			}
		list ($id) = mysql_fetch_row ($result);
		settype ($id,"integer");
		$this->getdata ($id);
		if ($password != $this->password)
			{
			$GLOBALS["error"] = "Password inválido";
			return false;
			}
		$GLOBALS["error"] = "Usuario {$this->screenname} validado";
		return true;
		}
		
// Valida que haya un usuario activo (no importa cual sea)
	function active ()
		{
		if (isset ($_SESSION["active_user"]))
			return true;
		else
			{
			return false;
			}
		}
		
// Obtiene los datos del usuario activo si es que hay alguno, sino retorna FALSE
	function get_active_data ()
		{
		if ($this->active () and $this->getdata ($_SESSION["active_user_id"]))
			return true;
		else
			return false;
		}
		
// Muestra un boton de LOGIN si no hay nadie logueado, o de LOGOUT en el otro caso
	function loginbutton ()
		{
		if (!$this->get_active_data ())
			{
			$this->form ();
			}
		else
			{
			?>
			<form action="../admini/system/logout.php" method="post" name="logout">
			<div id="logout_form">
				<a href="../admini/system/user_options.php"><?
					echo ($this->screenname == "" ? $this->username : $this->screenname);
				?></a>
				<br /><br />
				<input type="submit" value="salir" class="normal_button" />
			</div>
			</form>
			<?
			}
		}
		
// Muestra el formulario de Login
	function form ()
		{
		?>
		<form action="../admini/system/login.php" name="login" method="post" autocomplete="off">
			<div id="login_form">
				Usuario<br />
				<input type="text" maxlength="10" name="username" /><br />
				Contraseña<br />
				<input type="password" maxlength="10" name="password" /><br />
				<input type="submit" value="ingresar" class="normal_button" />
			</div>
		</form>
		<?
		}

	function gettotal ()
		{
		db_connect ();
		$query = "select count(*) from {$this->mysql_table}";
		$result = mysql_query ($query);

		list ($total) = mysql_fetch_row ($result);
		return $total;
		}
	}
function Select($sql)	{
		if ((empty($sql)) || (!eregi("^select",$sql)) || (empty($this->CONNECTION))) {
      $this->ERROR_MSG = "\r\n" . "Sentencia SQL es <code>null</code> o no se puede SELECCIONAR - " . date('H:i:s');
      return false;
    } else {
  		$conn = $this->CONNECTION;
	  	$results = mysql_query($sql,$conn);
		  if ((!$results) || (empty($results))) {
        $this->ERROR_MSG = "\r\n" . mysql_error()." - " . date('H:i:s');
        return false;
      } else {
        $i = 0;
        $data = array();
        while ($row = mysql_fetch_array($results)) {
        	$data[$i] = $row;
        	$i++;
        }
        mysql_free_result($results);
        return $data;
      }
    }
	}
?>