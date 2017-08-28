<?php
//fichier includes/connexion.php
$dbh = new PDO('mysql:host=localhost;dbname=onlgsp_site;charset=utf8', 'root', '');
//pour forcer le type de récupération (associatif)
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,
									 PDO::FETCH_ASSOC);
//mode Debug SQL
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
?>