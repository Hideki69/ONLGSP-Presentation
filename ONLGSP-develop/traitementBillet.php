
<?php
session_start();
//Mr Propre
$safe = array_map('strip_tags', $_POST);

if(!isset($_SESSION['id'])){
    echo "<h3>Veuillez-vous connecter pour acceder au Forum !</h3>";
    echo '<a class="btn btn-warning" href="index.php" role="button"> Retour à l\'accueil </a>';
}

else {
    //connexion
    include 'includes/connexion.php';
    //ajout du produit
    $rqAjoutCom = "INSERT INTO billets(idUsers, auteur, titre, contenu) VALUES(:idUsers, :auteur, :titre, :contenu)";
    //preparation
    $stmtAjoutCom = $dbh->prepare($rqAjoutCom);
    //paramètres
    $params = array(':idUsers' => $safe['idUsers'], ':auteur' => $safe['auteurBillet'], ':titre' => $safe['titreBillet'], ':contenu' => $safe['contenuBillet']);
    //exécution
    $stmtAjoutCom->execute($params);
    header('Location: forum.php');
}

//print_r($stmtAjoutCom);
?>
