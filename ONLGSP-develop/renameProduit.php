<?php
//script renameProduit.php

//Mr Propre
$safe = array_map('strip_tags', $_POST);
//connexion
include 'includes/connexion.php';
//requete modif nom
$rqModif = "UPDATE users
						SET pseudo = :pseudo
						WHERE idUsers = :idUsers";
//preparation
$stmtModif = $dbh->prepare($rqModif);
//parametres
$params = array(':pseudo' => $safe['pseudo'],
								':idUsers' => $safe['idUsers']);
//exécution
$stmtModif->execute($params);
//retour
header('location:index.php');
?>
