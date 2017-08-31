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
        $req = $dbh->prepare('SELECT id_billetJeux, titre, contenuBilletJeux, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM billetJeux WHERE id_billetJeux = :billet');
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
                    $req = $dbh->prepare('SELECT id, auteur, commentaire, DATE_FORMAT(date_commentaireJeux, \'%d/%m/%Y à %Hh%imin%ss\') AS date_commentaire_fr FROM commentaireJeux WHERE id_billetJeux = :id_commentaire ORDER BY date_commentaireJeux');
                    $param = array(':id_commentaire'=>$safe['billet']);
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
    </div>
</div>

        <?php
        include'includes/footer.php';
        include'includes/basPage.php';
        ?>