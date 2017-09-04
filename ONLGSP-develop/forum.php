<?php
include'includes/entete.php';
include'includes/menu.php';
include'includes/connexion.php';
?>

<div class="col-md-12 bordureTitreJeux">
    <h1 class="text-center titreForum">Section discution</h1>
    <div class="row text-center">
        <a href="sectionJeu.php"> Section Jeux /</a>
        <a href="index.php"> Accueil </a>
    </div>
    <div class="row">
        <div class="col-md-offset-2 col-md-8">
            <div class="bordure"></div>
        </div>
    </div>
    <img src="images/Logo.png" class="col-md-offset-4 col-md-4 img-responsive" alt="Logo ONLGSP">
</div>
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
    <div class="news col-md-offset-2 col-md-8">
        <table class="table table-striped">
            <!-- On cells (`td` or `th`) -->
            <tbody>
                <td class="bordureDroite col-md-4"><p class="text-center sujet">Auteur</p><h3 class="text-center"><br><strong><?php echo htmlspecialchars($donnees['auteur']); ?></strong></h3></td>
                <td class="col-md-4">
                    <p class="sujet text-center"> Sujet </p>
                    <h4 class="text-center">
                        <?php echo htmlspecialchars($donnees['titre']); ?>
                        <em>le <?php echo $donnees['date_creation_fr']; ?></em>
                    </h4>
                    <a href="commentaire.php?billet=<?php echo $donnees['id_billet']; ?>"><h4>Commentaires</h4></a>
                </td>
                <td class="bordureDroite col-md-4">
                    <p class="sujet text-center"> Accroche </p>
                    <p class="text-center">
                        <?php
    // On affiche le contenu du billet
    echo nl2br(htmlspecialchars($donnees['contenu']));
                        ?>
                        <br />
                    </p>
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

<?php include'includes/footer.php'; ?>
<?php include'includes/basPage.php'; ?>
