<?php

// Error reporting:
error_reporting(E_ALL^E_NOTICE);

// Including the DB connection file:
require 'connect.php';

// Removing notes that are older than an hour:
//mysql_query("DELETE FROM notes WHERE id>3 AND dt<SUBTIME(NOW(),'0 1:0:0')");
$count = mysql_query("select count(*) from notes");
$query = mysql_query("SELECT * FROM notes ORDER BY id DESC");

$notes = '';
$left='';
$top='';
$zindex='';

while($row=mysql_fetch_assoc($query))
{
	// The xyz column holds the position and z-index in the form 200x100x10:
	list($left,$top,$zindex) = explode('x',$row['xyz']);

	$notes.= '
	<div class="note '.$row['color'].'" style="left:'.$left.'px;top:'.$top.'px;z-index:'.$zindex.'">
		'.htmlspecialchars($row['text']).'
		<div class="author">'.htmlspecialchars($row['name']).'</div>
		<span class="data">'.$row['id'].'</span>
	</div>';
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dilek Ağacı</title>

<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox-1.2.6.css" media="screen" />
<link href='http://fonts.googleapis.com/css?family=Grand+Hotel&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="fancybox/jquery.fancybox-1.2.6.pack.js"></script>

<script type="text/javascript" src="script.js"></script>

</head>

<body>

<h1>Dilek Ağacı</h1>
<h2><a href="http://www.emretalu.net">www.emretalu.net</a></h2>


<div id="main">
	<a id="addButton" class="green-button" href="add_note.html">Dilek Ekle</a>
    
	<?php echo $notes?>
    
</div>
<div align="center">Şu anda <?php echo mysql_result($count,0);?> adet dileğimiz bulunmakta.</div>

</body>
</html>
