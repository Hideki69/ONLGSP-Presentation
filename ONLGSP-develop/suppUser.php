<?php
//script suppUser.php

//Mr Propre (l'id vient de l'url)
$idUsers = strip_tags($_GET['id']);

//connexion
include 'includes/connexion.php';

//requete
$rqSupp = "DELETE
					 FROM users
					 WHERE idUsers = :idUsers";

//preparation
$stmtSupp = $dbh->prepare($rqSupp);

//paramètres
$params = array(':idUsers' => $idUsers);

//exécution
$stmtSupp->execute($params);

//retour
header('location: index.php');
?>
