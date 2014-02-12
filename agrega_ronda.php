<?php
session_start();
//include('conexion.php')
//$db = conectar();
include('system/conexion.php');
$db=Conectar();


$sql = "SELECT id_usuario as id_usuario FROM usuarios WHERE id_usuario !=0";
$rs_usuarios=$db->Execute($sql);
while(!$rs_usuarios->EOF)
	{
    echo "prodes para:".$rs_usuarios->fields['id_usuario'];
    $sql_prode_usuarios = "select max(id_prode) as id_prode from prodes";
                $rs_prode = $db->Execute($sql_prode_usuarios);
                    if ($rs_prode->fields['id_prode'] != NULL){
                        $id_prode = $rs_prode->fields['id_prode']+1;
                        
                    }else{
                        $id_prode = 1;
                        
                    }
                               
                $sql_insert_prode = "insert into prodes_usuarios (id_usuario) values (".$rs_usuarios->fields['id_usuario'].") ";
                $rs_insert_prode = $db->Execute($sql_insert_prode);
                
                $sql_ronda = "select * from partidos where ronda = '".$_GET['ronda']."' and torneo = '".$_GET['torneo']."' ";
		$rs_ronda = $db->Execute($sql_ronda);	
		while (!$rs_ronda->EOF)
		{
			$sql_averigua = "select id_partido 
							from prodes
							where id_usuario= '".$rs_usuarios->fields['id_usuario']."' 
							and id_partido = '".$rs_ronda->fields['id_partido']."'
                                                        and ronda = '".$_GET['ronda']."' 
                                                        and torneo = '".$_GET['torneo']."' ";
                        $rs_averigua=$db->Execute($sql_averigua);
				
			if ($rs_averigua->RecordCount()>0)
			{
				echo "partido existente!!<br>";				
			}
			else
			{				
				$sql_insert_ronda2 = "insert into prodes ( id_prode, id_partido, id_usuario, estado, ronda, torneo ) 
				values (".$id_prode.",".
                                        $rs_ronda->fields['id_partido'].",".
                                        $rs_usuarios->fields['id_usuario'].", 'A', ".$rs_ronda->fields['ronda']." , ".$rs_ronda->fields['torneo']." )";
			//	print($sql_insert_ronda2);die;
				$rs_insert_ronda2 = $db->Execute($sql_insert_ronda2);
				
				echo $sql_insert_ronda2."<br>";
			}
			
			$rs_ronda->MoveNext();	
		}
		

		
		
		$rs_usuarios->MoveNext();
	}	
	
$rs_ronda->close();
$rs_usuarios->close();

?>		