<?php
//fichier includes/connexion.php
try
{
    $dbh = new PDO('mysql:host=localhost;dbname=onlgsp_site;charset=utf8', 'root', '');
}
catch(Exception $e)
{
    echo'Erreur lors de la connexion : '.$e->getMessage();
}
//pour forcer le type de récupération (associatif)
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
//mode Debug SQL
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
?>
