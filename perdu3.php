<?php
//script perdu3.php
include 'includes/entete.php';
include 'includes/menu.php';
//Mr Propre
$token = strip_tags($_GET['token']);
//récupérer l'ID du client
$rqClient = "SELECT idUsers
						 FROM users
						 WHERE token = :token";
$stmtClient = $dbh->prepare($rqClient); //préparation
//paramètres
$params = array(':token' => $token);
$stmtClient->execute($params); //exécution
$idClient = $stmtClient->fetchColumn(); //une unique info
//controle
//echo $idClient;
if($idClient !== false)
{
?>
	<div class="row">
		<form method="post" action="perdu4.php"
					class="col-md-offset-4 col-md-4">
			<div class="form-group">
				<label>Nouveau Mot de passe</label>
				<input type="password" name="passwd"
							 class="form-control" >
			</div>
			<div class="form-group">
				<label>Confirmer nouveau Mot de passe</label>
				<input type="password" name="passwd2"
							 class="form-control" >
			</div>
			<input type="hidden" name="idUsers"
						 value="<?=$idClient;?>" >
			<div class="form-group text-center">
				<input type="submit" name="btnSub" value="Modifier"
							 class="btn btn-success" >
			</div>
		</form>
	</div>
<?php
}
else echo '<div class="alert alert-danger">
						Erreur de token...
					 </div>';
//pied de page
include 'includes/footer.php';
?>
