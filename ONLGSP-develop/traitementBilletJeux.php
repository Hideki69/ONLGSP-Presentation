
<?php
session_start();
//Mr Propre
$safe = array_map('strip_tags', $_POST);

if(!isset($_SESSION['id'])){
    echo "<h3>Veuillez-vous connecter pour acceder aux discussions du Forum !</h3>";
    echo '<a class="btn btn-warning" href="index.php" role="button"> Retour à l\'accueil </a>';
}

else {
    //connexion
    include 'includes/connexion.php';
    //ajout du produit
    $rqAjoutCom = "INSERT INTO billetJeux(idUsers, auteur, titre, contenuBilletJeux) VALUES(:idUsers, :auteur, :titre, :contenuBilletJeux)";
    //preparation
    $stmtAjoutCom = $dbh->prepare($rqAjoutCom);
    //paramètres
    $params = array(':idUsers' => $safe['idUsers'], ':auteur' => $safe['auteurBilletJeux'], ':titre' => $safe['titreBilletJeux'], ':contenuBilletJeux' => $safe['contenuBilletJeux']);
    //exécution
    $stmtAjoutCom->execute($params);
    header('Location: sectionJeu.php');
}

//print_r($stmtAjoutCom);
?>
