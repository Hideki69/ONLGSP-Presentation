<?php
//script quitter.php
session_start(); //toujours en haut
//nettoyage des variables de session
session_unset(); // ou $_SESSION = array();
//destruction de la session
session_destroy();
//retour à l'accueil
header('location: index.php');
?>
