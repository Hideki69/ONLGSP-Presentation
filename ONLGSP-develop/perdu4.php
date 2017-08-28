<?php
//script perdu4.php
include 'includes/entete.php';
include 'includes/menu.php';


/* fonction de vérification de la complexité
	 du mot de passe */
function verifPassword($mdp)
{
	$longueur = strlen($mdp); //longueur du mot de passe
	if($longueur < 8) return false;
	$nbInt = $nbMaj = 0; //compteurs majuscules et chiffres
	for($i=0; $i<$longueur; $i++)
	{
		// est-ce un nombre?
		if(is_numeric($mdp[$i])) $nbInt++;
		// est-ce une majuscule?
		else if(strtoupper($mdp[$i]) == $mdp[$i]) $nbMaj++;
	}
	if($nbInt < 1) return false;
	if($nbMaj < 1) return false;
	return true;
}

//Mr Propre
$safe = array_map('strip_tags', $_POST);

//mdp identiques???
if($safe['passwd'] !== $safe['passwd2'])
{
	echo '<div class="alert alert-danger">
					Les mots de passe doivent être identiques.
					<a href="#"
						 onclick="window.history.go(-1); return false;">
						 Recommencer</a>
				</div>';
}
else
{
	if(verifPassword($safe['passwd']))
	{
		//mise à jour du mot de passe et suppression du token
		$hash = password_hash($safe['passwd'],
													PASSWORD_DEFAULT);
		$rqMajMdp = "UPDATE users
								 SET passwd = :passwd,
								 token = ''
								 WHERE idUsers = :idUsers";
		$stmtMajMdp = $dbh->prepare($rqMajMdp); //préparation
		$params = array(':passwd' => $hash,
										'idUsers' => $safe['idUsers']);
		if($stmtMajMdp->execute($params))
		{
			echo '<div class="alert alert-success">Votre mot de 	passe à été modifié</div>';
		}
		else echo '<div class="alert alert-danger">Oups</div>';
	} //fin if test mot de passe
	else echo '<div class="alert alert-danger">
							Le mot de passe doit comporter au moins 8 caractères, une majuscule et un chiffre.
							<a href="#"
								 onclick="window.history.go(-1); return false;">Recommencer</a>
						 </div>';
}
//pied de page
include 'includes/footer.php';
?>
