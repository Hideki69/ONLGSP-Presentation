<?php
include'includes/entete.php';
include'includes/menu.php';

include'includes/connexion.php';

?>
<h1 class="text-center titreForum">Forum</h1>
<?php
// On récupère les 5 derniers billets
$req = $dbh->query('SELECT id_billet, titre, contenu, auteur, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM billets ORDER BY date_creation DESC LIMIT 0, 5');

while ($donnees = $req->fetch())
{
    if(empty($donnees)){
        header('Location: includes/404.php');
    }
?>

<div class="row">
    <div class="news jumbotron col-md-offset-3 col-md-6">
        <table class="table table-striped">
            <!-- On rows -->
            <thead class="col-md-12">
                <tr class="active">Auteur</tr>
                <tr class="success">Titre</tr>
                <tr class="warning">Acroche</tr>
            </thead>
            <!-- On cells (`td` or `th`) -->
            <tr>
                <td class="col-md-3 active"><?php echo htmlspecialchars($donnees['auteur']); ?></td>
                <td class="col-md-4 success">
                    <h3><?php echo htmlspecialchars($donnees['titre']); ?>
                        <em>le <?php echo $donnees['date_creation_fr']; ?></em>
                    </h3>
                </td>
                <td class="col-md-5 warning">
                    <p>
                        <?php
    // On affiche le contenu du billet
    echo nl2br(htmlspecialchars($donnees['contenu']));
                        ?>
                        <br />
                        <em><a href="commentaire.php?billet=<?php echo $donnees['id_billet']; ?>">Commentaires</a></em>
                    </p>
                </td>
            </tr>
        </table>
    </div>
</div>
<?php
} // Fin de la boucle des billets
$req->closeCursor();
?>

<div class="col-md-8">
    <div class="col-md-offset-8">
        <form method="post" action="traitementBillet.php" class="jumbotron col-md-10">
            <div class="col-md-offset-3">
                <label class="col-md-offset-1" for="titreBillet"> Titre du Billet </label><br>
                <input type="text" name="titreBillet" id="titreBillet" required><br>

                <input type="hidden" name="auteurBillet" id="auteurBillet" value="<?= $_SESSION['pseudo'] ?>"><br>

                <label for="contenuBillet"> Ecrivez votre nouveau billet</label><br>
                <input type="text" name="contenuBillet" id="contenuBillet" required>

                <input type="hidden" id="idUsers" name="idUsers" value="<?= $_SESSION['id'] ?>">
                <button class="btn btn-submit" type="submit" name="validBillet" id="validBillet"> Envoyez </button>
            </div>
        </form>
    </div>
</div>
<?php include'includes/footer.php'; ?>
<?php include'includes/basPage.php'; ?>
