<?php
//script modifCategorie.php
session_start(); //toujours en haut
include 'includes/connexion.php';
//Mr Propre
$safe = array_map('strip_tags', $_POST);
//requete
$rqModif = "UPDATE users
						SET pseudo = :pseudo
						WHERE idUsers = :idUsers";
//preparation
$stmtModif = $dbh->prepare($rqModif);
//paramètres
$params = array(':pseudo' => $safe['pseudo'],
								':idUsers' => $safe['idUsers']);
//exécution
$stmtModif->execute($params);
//retour
// header('location: index.php');
?>
