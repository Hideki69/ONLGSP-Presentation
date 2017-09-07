
<?php
//script addCategorie.php
//connexion
include 'includes/connexion.php';

//Mr Propre
//la categorie existe-t'elle déjà?
$rqlisteJeux = "SELECT idJeux,id_billetJeux, image,titre FROM jeux ORDER BY titre";
$listeJeux = $dbh->query($rqlisteJeux)->fetchAll();

?>

<div class="listeJeux text-center col-md-10 col-md-offset-1">
    <div class="row">
        <i class="fa fa-steam-square fa-5x" aria-hidden="true"></i>
    </div>
    <h2> Liste des serveurs disponibles </h2>
    <p> Profitez de serveurs performant pour vos jeux !</p>
</div>
<div class="col-md-10 col-md-offset-1">
    <div class="row">
        <?php
        foreach($listeJeux as $listeJeu):
        {
            echo'<div class="grid">
                  <div class="grid-item">
                    <div class="col-md-2 col-sm-4">
                      <a href="commentaireJeux.php?billet='.$listeJeu['id_billetJeux'].'">
                        <figure class="figure">
                          <img src="images/miniature/'.$listeJeu['image'].'.jpg" class="img-responsive">
                          <figcaption><p class="text-center titreJeu">'.$listeJeu['titre'].'</p></figcaption>
                        </figure>
                      </a>
                    </div>
                  </div>
                </div>';
        }

        ?>

        <?php endforeach; ?>
    </div>
    <a href="#" class="top">Haut de page</a>
</div>
</div>
</div>
