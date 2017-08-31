<?php
include'includes/entete.php';
include'includes/menu.php';
include'includes/connexion.php';
?>
<h1 class="text-center titreForum">Section Jeux</h1>

<div class="row text-center">
    <a href="forum.php"> Section Discution /</a>
    <a href="index.php"> Accueil </a>
</div>
<div class="row">
    <div class="col-md-offset-2 col-md-8">
        <div class="bordure"></div>
    </div>
</div>

<?php
// On récupère les 5 derniers billets
$req = $dbh->query('SELECT id_billetJeux, titre, contenuBilletJeux, auteur, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM billetJeux ORDER BY titre ASC');

while ($donnees = $req->fetch())
{
    if(empty($donnees)){
        header('Location: includes/404.php');
    }
?>

<div class="row">
    <div class="news col-md-offset-2 col-md-8">
        <table class="table table-striped">
            <!-- On cells (`td` or `th`) -->
            <tbody>
                <td class="bordureDroite col-md-6"><p class="text-center sujet">Auteur</p><h3 class="text-center"><br><strong><?php echo htmlspecialchars($donnees['auteur']); ?></strong></h3></td>
                <td class="col-md-6">
                    <p class="sujet text-center"> Jeux </p>
                    <h4 class="text-center">
                        <?php echo strtoupper(htmlspecialchars($donnees['titre'])); ?>
                        <em>le <?php echo $donnees['date_creation_fr']; ?></em>
                    </h4>
                    
                    <p>
                        <?php
                        echo nl2br(htmlspecialchars($donnees['contenuBilletJeux']));
                        ?>
                    </p>
                    <a href="commentaireJeux.php?billet=<?php echo $donnees['id_billetJeux']; ?>"><h4>Commentaires</h4></a>
                </td>
            </tbody>
        </table>
    </div>
</div>
<?php
} // Fin de la boucle des billets
$req->closeCursor();
?>
<div class="row">
    <div class="col-md-offset-3 col-md-6">
        <div class="bordure"></div>
    </div>
</div>

<div class="row">
    <div class="col-md-offset-5 col-md-2">
        <form method="post" action="traitementBilletJeux.php" class="jumbotron">
            <div class="col-md-offset-3">
                <label class="text-center" for="titreBilletJeux"> Titre du Billet </label><br>
                <input type="text" name="titreBilletJeux" id="titreBilletJeux" required><br>

                <input type="hidden" name="auteurBilletJeux" id="auteurBilletJeux" value="<?= $_SESSION['pseudo'] ?>"><br>

                <label for="contenuBillet"> Ecrivez votre nouveau billet</label><br>
                <input type="text" name="contenuBilletJeux" id="contenuBilletJeux" required>

                <input type="hidden" id="idUsers" name="idUsers" value="<?= $_SESSION['id'] ?>"><br><br>
                <button class="btn btn-submit" type="submit" name="validBilletJeux" id="validBilletJeux" disabled> Envoyez </button>
            </div>
        </form>
    </div>
</div>

<?php include'includes/footer.php'; ?>
<?php include'includes/basPage.php'; ?>