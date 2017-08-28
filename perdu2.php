<?php
//script perdu2.php
include 'includes/entete.php';
include 'includes/menu.php';

//Mr Propre
$email = strip_tags($_POST['email']);

// l'adresse mail est-elle dans la table clients?
$rqMail = "SELECT COUNT(*)
			 	 	 FROM users
			 	 	 WHERE email = :email";
//preparation
$stmtMail = $dbh->prepare($rqMail);
//parametres
$params = array(':email' => $email);
//exécution
$stmtMail->execute($params);
//récupération (une unique valeur)
$exists = $stmtMail->fetchColumn();
//si le client existe
if($exists == 1)
{
	//génération d'un token
	$token = md5($email.date('YmdHis'));
	//echo $token; //controle
	//envoi du mail
	require 'includes/phpmailer/PHPMailerAutoload.php';
	$mail = new PHPMailer; // nouvel objet de type mail
	$mail->CharSet = "UTF-8"; //mail au format UTF-8
	$mail->isSMTP(); // connexion directe au serveur SMTP
	$mail->isHTML(true); // on va utiliser le format HTML
	$mail->Host = "relay-hosting.secureserver.net"; //le serveur de messagerie
	$mail->Port = 465; //le port obligatoire de google
	$mail->SMTPAuth = true; // on va fournir un login/pass au serveur
	$mail->SMTPSecure = 'ssl'; //certificat SSL
	$mail->Username = 'wf3villefranche@gmail.com'; //utilisateur SMTP
	$mail->Password = 'Azerty1234'; // mot de passe SMTP
	$mail->setFrom('wf3villefranche@gmail.com', 'ONLGSP'); //expéditeur
	$mail->addAddress($email); //le destinataire
	$mail->Subject = 'ONLGSP - Récupération de votre mot de passe';
	$mail->Body = '<html>
									<head>
										<style>
											h3{color: green; }
										</style>
									</head>
									<body>
										<h3>Vous avez signalé votre mot de passe perdu....</h3>
										<p><a href="http://'.$_SERVER['SERVER_NAME'].'/ONLGSP-Presentation/perdu3.php?token='.$token.'">Réinitialiser votre mot de passe</a></p>
									</body>
								</html>'; //le corps du mail
	if(!$mail->send()) //si l'envoi délire
	{
		//message d'erreur
		echo '<div class="alert alert-danger">Erreur de mail: '
					.$mail->ErrorInfo
					.'</div>';
	}
	else //si envoi OK
	{
		//mise à jour de la table client
		$rqMaj = "UPDATE users
							SET token = :token
							WHERE email = :email";
		$stmtMaj = $dbh->prepare($rqMaj); //préparation
		$param2 = array(':email' => $email,
										':token' => $token);
		$stmtMaj->execute($param2); //exécution
	 //message de retour
	echo '<div class="alert alert-success">Un mail vient de vous être envoyé pour renouveler votre mot de passe</div>';
	}
}
else echo '<div class="alert alert-danger">Votre adresse mail est inconnue...</div>';


//pied de page
include 'includes/footer.php';
?>
