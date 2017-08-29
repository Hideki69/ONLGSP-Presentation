<?php

// script ajoutClient.php
include 'includes/entete.php';
include 'includes/menu.php';

//Mr Propre
$safe = array_map('strip_tags', $_POST);
$errors = array();

//contrôle email
if(!filter_var($safe['email'], FILTER_VALIDATE_EMAIL))
{
    $errors[] = 'Adresse mail non valide';
}

//controle mot de passe
$mdp = $safe['passwd'];
$longueur = strlen($mdp); //longueur du mot de passe
if($longueur < 8)
{
    $errors[] = 'Mot de passe trop court';
}
$nbInt = $nbMaj = 0; //compteurs majuscules et chiffres
for($i=0; $i<$longueur; $i++)
{
    // est-ce un nombre?
    if(is_numeric($mdp[$i])) $nbInt++;
    // est-ce une majuscule?
    else if(strtoupper($mdp[$i]) == $mdp[$i]) $nbMaj++;
}
if($nbInt < 1)
{
    $errors[] = 'Le mot de passe doit contenir au moins un chiffre';
}
if($nbMaj < 1){
    $errors[] = 'Le mot de passe doit contenir au moins une majuscule';
}
// l'adresse mail est-elle déjà dans la table clients?
$rqVerif = "SELECT COUNT(*)	FROM users WHERE email = :email";
//préparation
$stmtVerif = $dbh->prepare($rqVerif);
//paramètres
$paramVerif = array(':email' => $safe['email']);
//exécution
$stmtVerif->execute($paramVerif);
//récupération
$exists = $stmtVerif->fetchColumn();
//si > 0 erreur
if($exists > 0){
    $errors[] = "L'adresse mail existe déjà";
}
// /////////////////////////////////////////////////////////

// le pseudo est-elle déjà dans la table clients?
$rqVerif = "SELECT COUNT(*)	FROM users WHERE pseudo = :pseudo";
//préparation
$stmtVerif = $dbh->prepare($rqVerif);
//paramètres
$paramVerif = array(':pseudo' => $safe['pseudo']);
//exécution
$stmtVerif->execute($paramVerif);
//récupération
$exists = $stmtVerif->fetchColumn();
//si > 0 erreur
if($exists > 0){
    $errors[] = "Le pseudo existe déjà";
}
// //////////////////////////////////////////////
// si il y a pas d'erreur
if(count($errors) == 0)
{
    //hashage mot de passe
    $hash = password_hash($mdp, PASSWORD_DEFAULT);

    //ajout dans la base de données
    $req = "INSERT INTO users(email, passwd, actif, pseudo)	VALUES(:email,:passwd, :actif, :pseudo)";

    //préparation
    $stmt = $dbh->prepare($req);

    //paramètres
    $params = array(':email' => $safe['email'],	':passwd' => $hash,	':actif' => 1, ':pseudo' => $safe['pseudo']);
    //exécution
    if($stmt->execute($params))
    {
        //Message retour
        echo '<div class="alert alert-success">	Merci pour votre Inscription </div>';
    }
    else echo '<div class="alert alert-danger">	 Erreur de requête </div>';
}
//else message erreur
else
{
    $liste = ''; //chaine vide
    //pour chaque erreur constatée
    foreach($errors as $erreur)
    {
        $liste .= '<li>'.$erreur.'</li>';
    }
    echo '<div class="alert alert-danger">Des erreurs sont à corriger:	<ul>'.$liste.'</ul></div>';
}
//pied de page
include 'includes/footer.php';
?>
