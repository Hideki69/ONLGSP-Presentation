<?php
session_start();
//Mr Propre
$safe = array_map('strip_tags', $_POST);

if(!isset($_SESSION['id'])){
    echo "<h3>Veuillez-vous connecter pour acceder au commentaire du Forum !</h3>";
    echo '<a class="btn btn-warning" href="index.php" role="button"> Retour à l\'accueil </a>';
}

else {
    //connexion
    include 'includes/connexion.php';
    //ajout du produit
    $rqAjoutCom = "INSERT INTO commentaireJeux(id, auteur, commentaire) VALUES(:id, :auteur, :commentaire)";
    //preparation
    $stmtAjoutCom = $dbh->prepare($rqAjoutCom);
    //paramètres
    $params = array(':id' => $safe['id_billet'], ':auteur' => $safe['auteur'], ':commentaire' => $safe['commentaire']);
    //exécution
    $stmtAjoutCom->execute($params);
    header('Location: commentaireJeux.php?billet='.$safe['id_billet']);
}

//print_r($stmtAjoutCom);
?>