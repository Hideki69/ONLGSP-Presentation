<?php
//liste des insciption
include '../includes/connexion.php';
$req = "SELECT * FROM view_users";
$listeInscrit = $dbh->query($req)->fetchAll();
?>
	<div class="col-md-8">
	<!-- affichage de la liste des produits -->
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID Useur</th>
				<th>Pseudo</th>
				<th class="hidden-xs">Nom</th>
				<th class="hidden-xs">Prénom</th>
        <th class="hidden-xs">Ip</th>
				<th class="hidden-xs">Email</th>
				<th class="hidden-xs">Adresse</th>
				<th class="hidden-xs">Ville</th>
        <th class="hidden-xs">Code postal</th>
				<th class="hidden-xs">Pays</th>
				<th class="hidden-xs">Session</th>
				<th class="hidden-xs">R.S.U</th>
				<th class="hidden-xs">Tva intra</th>
				<th class="hidden-xs">Ape</th>
				<th class="hidden-xs">Siret</th>
				<th class="hidden-xs">Telephone</th>
        <th class="hidden-xs">Fin_de_session</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach($listeInscrit as $données): ?>
			<tr>
				<td> <?=$données['idUsers'];?> </td>
				<td> <?=$données['pseudoUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['nomUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['prenomUsers'];?> </td>
        <td class="hidden-xs"> <?=$données['ipUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['emailUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['adresseUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['villeUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['cpUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['paysUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['sessionUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['raisonSocialeUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['tvaIntraUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['apeUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['siretUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['telephoneUsers'];?> </td>
				<td class="hidden-xs"> <?=$données['finSessionUsers'];?> </td>
				<td><a href="suppUser.php?id=<?= $données['view_users'];?>" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i></a></td>
				<td><a href="modifUser.php?id=<?= $données['view_users'];?>" class="btn btn-primary btn-xs glyphicon glyphicon-pencil"></i></a></td>
			</tr>
		<?php endforeach; ?>
		</tbody>
	</table>
	</div>
</div>
