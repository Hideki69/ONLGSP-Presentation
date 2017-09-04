<?php
//script modifCategorie.php
session_start(); //toujours en haut
include 'includes/connexion.php';
//Mr Propre
$safe = array_map('strip_tags', $_POST);
//requete
$rqModif = "UPDATE categories
						SET libCategorie = :libCategorie
						WHERE idCategorie = :idCategorie";
//preparation
$stmtModif = $dbh->prepare($rqModif);
//paramètres
$params = array(':libCategorie' => $safe['libCategorie'],
								':idCategorie' => $safe['idCategorie']);
//exécution
$stmtModif->execute($params);
//retour
// header('location: index.php');
?>
