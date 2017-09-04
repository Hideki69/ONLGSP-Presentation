<?php
//liste des insciption
include '../includes/connexion.php';
$req = "SELECT * FROM view_users";
$listeInscrit = $dbh->query($req)->fetchAll();
?>
<div class="col-md-12 bordureTitreJeux">
    <img src="images/forum.png" class="img-responsive imgsvg">
    <div class="row banniereForum">
        <div class="col-md-3">
            <h1 class="titreForum">Section Jeux</h1>
            <a href="index.php"> Accueil</a> /
            <a href="forum.php"> Section Discussion</a>
        </div>
        <img src="images/Logo2.png" class="col-md-offset-1 col-md-4 img-responsive" alt="Logo ONLGSP">
    </div>
</div>
<div class="col-sm-6 col-sm-offset-3 positionTab">
    <!-- affichage de la liste des produits -->
    <table class="table  table-striped">
		<thead>
			<tr>
        <th>ID Users</th>
        <th>Pseudo</th>
        <th>Nom</th>
        <th>Prénom</th>
        <th>Email</th>
			</tr>
		</thead>
		<tbody>
      <?php foreach($listeInscrit as $données): ?>
			<tr>
				<td><?= $données['idUsers'];?></td>
        <td><input type="text" value="<?=$données['pseudoUsers'];?>" class="form-control" onkeyup="javascript:document.getElementById('resultPseudo_<?= $données['idUsers'];?>').value=this.value"></td>
        <td><input type="text" value="<?=$données['nomUsers'];?>" class="form-control" onkeyup="javascript:document.getElementById('resultNom_<?= $données['idUsers'];?>').value=this.value"></td>
        <td><input type="text" value="<?=$données['prenomUsers'];?>" class="form-control" onkeyup="javascript:document.getElementById('resultPrenom_<?= $données['idUsers'];?>').value=this.value"></td>
        <td><input type="text" value="<?=$données['emailUsers'];?>" class="form-control" onkeyup="javascript:document.getElementById('resultEmail_<?= $données['idUsers'];?>').value=this.value"></td>
				<td><!-- renommer un produit -->
					<form method="post" action="modifUser.php" class="form-inline">
            <input type="hidden" name="idUsers" value="<?=$données['idUsers'];?>">
            <input type="hidden" name="pseudo" value="<?=$données['pseudoUsers'];?>" id="resultPseudo_<?= $données['idUsers'];?>"/>
            <input type="hidden" name="nom" value="<?=$données['nomUsers'];?>" id="resultNom_<?= $données['idUsers'];?>"/>
            <input type="hidden" name="prenom" value="<?=$données['prenomUsers'];?>" id="resultPrenom_<?= $données['idUsers'];?>"/>
            <input type="hidden" name="email" value="<?=$données['emailUsers'];?>" id="resultEmail_<?= $données['idUsers'];?>"/>
						<button type="submit" name="btnSub" value="Modifier" class="btn btn-primary btn-xs glyphicon glyphicon-pencil"></button>
					</form>
        </td>
				<td>
				<a href="suppUser.php?id=<?=$données['idUsers'];?>" class="btn btn-xs btn-danger glyphicon glyphicon-trash"></a>
				</td>
			</tr>
		<?php endforeach; ?>
		</tbody>
	</table>
</div>
