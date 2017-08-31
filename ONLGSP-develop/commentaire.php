<?php 
$titrePage = '';
include'includes/entete.php';
include'includes/menu.php';
include'includes/connexion.php';
?>
<h1 class="text-center">Forum</h1>
<p class="text-center"><a href="forum.php">Retour à la liste des billets</a></p>

<?php

$safe = array_map('strip_tags', $_GET);
// Récupération du billet
$req = $dbh->prepare('SELECT id_billet, titre, contenu, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM billets WHERE id_billet = :billet');
$params = array(':billet'=>$safe['billet']);
$req->execute($params);
$donnees = $req->fetch();
?>
<div class="col-md-12">
    <div class="row">
        <div class="text-center news">
            <h3>
                <?php echo htmlspecialchars($donnees['titre']); ?>
                <em>le <?php echo $donnees['date_creation_fr']; ?></em>
            </h3>

            <p>
                <?php
                echo nl2br(htmlspecialchars($donnees['contenu']));
                ?>
            </p>
            <h2 class="text-center">Commentaires</h2>

            <?php
            $req->closeCursor(); // Important : on libère le curseur pour la prochaine requête

            // Récupération des commentaires
            $req = $dbh->prepare('SELECT id, auteur, commentaire, DATE_FORMAT(date_commentaire, \'%d/%m/%Y à %Hh%imin%ss\') AS date_commentaire_fr FROM commentaires WHERE id_billet = :id_commentaire ORDER BY date_commentaire');
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
    <form class="text-center" method="post" action="commentaire_post.php?billet=<?= $safe['billet']; ?>">
        <input type="hidden" name="id_billet" value="<?= $safe['billet'] ?>">
        <input type="hidden" name="auteur" id="auteur" value="<?= $_SESSION['pseudo'] ?>">
        <input type="text" name="commentaire" id="commentaire" placeholder="Tapez Votre Commentaire .. "><br>
        <input type="submit" name="validForm" id="validForm" placeholder="Envoyez">
    </form>
</div>


<?php
    include'includes/footer.php';
               include'includes/basPage.php';
?>
