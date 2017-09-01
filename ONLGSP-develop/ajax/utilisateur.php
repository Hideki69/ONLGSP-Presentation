<?php
//liste des insciption
include '../includes/connexion.php';
$req = "SELECT * FROM view_users";
$listeInscrit = $dbh->query($req)->fetchAll();
?>

<div class="col-sm-6 col-sm-offset-3 positionTab">
    <!-- affichage de la liste des produits -->
    <table class="table robert table-striped">
        <thead>
            <tr>
                <th>ID Useur</th>
                <th>Pseudo</th>
                <th class="hidden-xs">Nom</th>
                <th class="hidden-xs">Prénom</th>
                <th class="hidden-xs">Email</th>
                <th class="hidden-xs">Telephone</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($listeInscrit as $données): ?>
            <tr>
                <td> <?=$données['idUsers'];?> </td>
                <td> <?=$données['pseudoUsers'];?> </td>
                <td class="hidden-xs"> <?=$données['nomUsers'];?> </td>
                <td class="hidden-xs"> <?=$données['prenomUsers'];?> </td>
                <td class="hidden-xs"> <?=$données['emailUsers'];?> </td>
                <td class="hidden-xs"> <?=$données['telephoneUsers'];?> </td>
                <td><a href="suppUser.php?id=<?= $données['view_users'];?>" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i></a></td>
                <td><a href="modifUser.php?id=<?= $données['view_users'];?>" class="btn btn-primary btn-xs glyphicon glyphicon-pencil"></a></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<?php
include'../includes/sidebar.php';
?>