<?php
// script login.php

// Connexion BDD
include 'includes/entete.php';

//Mr Propre
$safe = array_map('strip_tags', $_POST);

//adresse mail existe?
$rqVerif = "SELECT COUNT(*)
						FROM users
						WHERE email = :email";
$stmtVerif = $dbh->prepare($rqVerif); //préparation
$paramVerif = array(':email' => $safe['email']);
$stmtVerif->execute($paramVerif); //exécution
$exists = $stmtVerif->fetchColumn(); //une seule info

//si on l'a trouvé
if($exists == 1)
{
	//récupération du mot de passe
	$rqClient = "SELECT idUsers, nom, prenom,
						   passwd
						   FROM users
						   WHERE email = :email";
	$stmtClient = $dbh->prepare($rqClient); //préparation
	$stmtClient->execute($paramVerif); //exécution
	//récupération des infos client
	$client = $stmtClient->fetch();
	//comparaison du mdp du formulaire et de la bdd
	if(password_verify($safe['passwd'],
										 $client['passwd']))
	{
		//client trouvé enregistrement en session
		$_SESSION['auth'] = 'ok';
		$_SESSION['nom'] = $client['nom'];
		$_SESSION['id'] = $client['idUsers'];
		$_SESSION['prenom'] = $client['prenom'];
		//sécurité!!!
		session_regenerate_id();

		//message de bienvenue et retour accueil
		echo '<script>
					window.location.href="index.php";
					</script>';
	}
	else{
		echo '<script>
					alert("Votre mot de passe est incorrect");
					window.location.href="index.php";
					</script>';
	}
}
else{
	echo '<script>
					alert("Votre email est inconnu");
					window.location.href="index.php";
					</script>';
}
?>
