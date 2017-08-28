
<?php
//script addCategorie.php
//connexion
include 'includes/connexion.php';

//Mr Propre
//la categorie existe-t'elle déjà?
$rqlisteJeux = "SELECT idJeux,image,titre FROM jeux ORDER BY titre";
$listeJeux = $dbh->query($rqlisteJeux)->fetchAll();

?>

<div class="listeJeux col-md-12">
    <div class="row">
        <div class="col-md-offset-6 col-xs-offset-5">
            <i class="fa fa-steam-square" aria-hidden="true"></i>
        </div>
    </div>
    <h2 class="text-center"> Liste des serveurs disponibles </h2>
    <p class="text-center"> Profitez de serveurs performant pour vos jeux !</p>
</div>
<div class="col-md-offset-1 col-md-10">
    <div class="row">
        <?php
        foreach($listeJeux as $listeJeu):
        {
            echo'<div class="grid"><div class="grid-item"><div class="col-md-3 col-sm-4"><fieldset><a href=#><img src="images/miniature/'.$listeJeu['image'].'.jpg" class="img-responsive imgMarge"></a><legend class="titreJeu text-center">'.$listeJeu['titre'].'</legend></figure></div></div></div>';
        }

        ?>

        <?php endforeach; ?>
    </div>
</div>
</div>
</div>