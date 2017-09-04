<?php
include'includes/entete.php';
include'includes/menu.php';
include'includes/connexion.php';
?>

<div class="container">
    <div class="row">
        <h1 class="titreForum text-center">Forum</h1>
        <p class="text-center"><a href="sectionJeu.php">Retour à la liste des billets de la Section Jeux</a></p>
        <div class="row">
            <div class="col-md-12">
                <div class="bordure"></div>
            </div>
        </div>
        <?php

        $safe = array_map('strip_tags', $_GET);
        // Récupération du billet
        $req = $dbh->prepare('SELECT id_billetJeux, titre, contenuBilletJeux, auteur, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM billetjeux WHERE id_billetJeux = :billet');
        $params = array(':billet'=>$safe['billet']);
        $req->execute($params);
        $donnees = $req->fetch();
        ?>
        <div class="col-md-12">
            <div class="row">
                <div class="text-center news commentaire jumbotron">
                    <h3>
                        <?php echo htmlspecialchars($donnees['titre']); ?>
                        <em>le <?php echo $donnees['date_creation_fr']; ?></em>
                    </h3>

                    <p>
                        <?php
                        echo nl2br(htmlspecialchars($donnees['contenuBilletJeux']));
                        ?>
                    </p>

                    <div class="row">
                        <div class="col-md-offset-2 col-md-8">
                            <div class="bordure"></div>
                        </div>
                    </div>
                    <h2 class="text-center">Commentaires</h2>

                    <?php
                    $req->closeCursor(); // Important : on libère le curseur pour la prochaine requête

                    // Récupération des commentaires
                    $req = $dbh->prepare('SELECT id, auteur, commentaire, DATE_FORMAT(date_commentaireJeux, \'%d/%m/%Y à %Hh%imin%ss\') AS date_commentaire_fr FROM commentairejeux WHERE id_billetJeux = :id_commentaireJeux ORDER BY date_commentaireJeux');
                    $param = array(':id_commentaireJeux'=>$safe['billet']);
                    $req->execute($param);

                    while ($donnees = $req->fetch())
                    {

                    ?>
                    <p class="text-center"><strong><?php echo htmlspecialchars($donnees['auteur']); ?></strong>
                        le <?php echo $donnees['date_commentaire_fr']; ?></p>
                    <p class="text-center"><?php echo nl2br(htmlspecialchars($donnees['commentaire'])); ?></p>
                    <?php

                    } // Fin de la boucle des commentaires
                    $req->closeCursor();
                    ?>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="bordure"></div>
            </div>
        </div>

        <div class="row">
            <form class="text-center" method="post" action="commentaireJeux_post.php?billet=<?= $safe['billet']; ?>">
                <input type="hidden" name="id_billetJeux" value="<?= $safe['billet'] ?>">
                <input type="hidden" name="auteur" id="auteur" value="<?= $_SESSION['pseudo'] ?>">
                <input type="text" name="commentaire" id="commentaire" placeholder="Tapez Votre Commentaire .. "><br>
                <button  class="btn btn-submit" type="submit" name="validForm" id="validForm" disabled> Envoyez </button>
            </form>
        </div>
    </div>
</div>

<?php
    include'includes/footer.php';
                       include'includes/basPage.php';
?>
