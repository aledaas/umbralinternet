<?
function db_connect ()
	{
	global $mysql_host, $mysql_db, $mysql_user, $mysql_pwd;
	if (mysql_connect ($mysql_host,$mysql_user,$mysql_pwd))
		if (mysql_select_db ($mysql_db))
			{
			return true;
			}
		else
			{
			return false;
			}
	else
		{
		return false;
		}
	}
?>