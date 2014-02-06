<?
$month_names = array (1=>"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

$day_names = array ("Domingo", "Lunes", "Martes", "Mi&eacute;rcoles", "Jueves", "Viernes", "Sabado");

function showdate ($d, $m, $y="", $wd="")
	{
	$return = $d." de ".$GLOBALS["month_names"][(int)$m];
	if ($y != "")
		$return .= " de $y";
	if ($wd != "")
		$return = $GLOBALS["day_names"][(int)$wd].", ".$return;
	return $return;
	}

function navControl ($control, $size=9)
	{
	?><img src="<?=SITE_URL?>/images/system/controls/<?=$control?>_off.gif" style="height: <?=$size?>px" border="0" alt="" align="absmiddle" onMouseOver="this.src='<?=SITE_URL?>/images/system/controls/<?=$control?>_on.gif'" onMouseOut="this.src='<?=SITE_URL?>/images/system/controls/<?=$control?>_off.gif'" /><?
	}
	
function translateMinutes ($minutes)
	{
	settype ($minutes, "float");
	$min = floor ($minutes);
	$sec = round (($minutes - $min) * 60);
	$sec = str_pad ($sec, 2, "0", STR_PAD_LEFT);
	
	return ("$min:$sec");
	}

function floorPrice ($p)
	{
	$int = floor ($p);
	$dec = $p-$int;
	settype ($int, "string");
	settype ($dec, "string");
	$dec = substr ($dec, 1, 3);
	
	$return = "$int$dec";
	settype ($return, "float");
	return $return;
	}
?>