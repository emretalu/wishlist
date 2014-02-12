<?php


/* Database config */

$db_host		= 'localhost';
$db_user		= 'emretalu_statix';
$db_pass		= 'xander1987';
$db_database	= 'emretalu_stick';

/* End config */



$link = mysql_connect($db_host,$db_user,$db_pass) or die('Unable to establish a DB connection');

mysql_select_db($db_database,$link);
mysql_query("SET names UTF8");

?>