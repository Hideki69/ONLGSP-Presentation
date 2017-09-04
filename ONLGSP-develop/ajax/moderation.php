<?php
include'../includes/connexion.php';
// On récupère les billets
$req = $dbh->query('SELECT id_billet, titre, contenu, auteur, DATE_FORMAT(date_creation, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM billets ORDER BY date_creation DESC');
$donnees = $req->fetch();

?>
<div class="col-md-12 bordureTitreJeux">
    <img src="images/forum.png" class="img-responsive imgsvg">
    <div class="row banniereForum">
        <div class="col-md-3">
            <h1 class="titreForum">Section Jeux</h1>
            <a href="index.php"> Accueil</a> /
            <a href="forum.php"> Section Discussion</a>
        </div>
        <img src="images/Logo2.png" class="col-md-offset-1 col-md-4 img-responsive" alt="Logo ONLGSP">
    </div>
</div>
<div class="col-sm-6 col-sm-offset-3 col-md-6 positionTab">
    <h2 class="text-center">Modération Commentaire</h2>
    <h3 class="titreModeration text-center">Commentaire Section discussion</h3>
    <table class="table table-striped">
        <!-- On cells (`td` or `th`) -->
        <tbody>
            <td class="bordureDroite col-md-4"><p class="text-center sujet">Auteur</p><h3 class="text-center"><br><strong><?php echo htmlspecialchars($donnees['auteur']); ?></strong></h3></td>
            <td class="bordureDroite1 col-md-4">
                <p class="sujet text-center"> Sujet </p>
                <h4 class="text-center">
                    <?php echo htmlspecialchars($donnees['titre']); ?>
                    <em>le <?php echo $donnees['date_creation_fr']; ?></em>
                </h4>
                <a href="commentaire.php?billet=<?php echo $donnees['id_billet']; ?>"><h4>Commentaires</h4></a>
            </td>
            <td class="bordureTitreJeux2 bordureDroite1 col-md-4">
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

    <?php
    $req2 = $dbh->query('SELECT id, commentaire, auteur, DATE_FORMAT(date_commentaireJeux, \'%d/%m/%Y à %Hh%imin%ss\') AS date_creation_fr FROM commentairejeux ORDER BY date_commentaireJeux DESC');
    $donnees2 = $req2->fetch();    
    ?> 

    <h3 class="titreModeration text-center">Commentaire Section Jeux</h3>
    <table class="table table-striped">
        <!-- On cells (`td` or `th`) -->
        <tbody>
            <td class="bordureDroite col-md-4"><p class="text-center sujet">Auteur</p><h3 class="text-center"><br><strong><?php echo htmlspecialchars($donnees2['auteur']); ?></strong></h3></td>
            <td class="bordureTitreJeux2 bordureDroite1 col-md-4">
                <p class="sujet text-center"> Accroche </p>
                <p class="text-center">
                    <?php
                    // On affiche le contenu du billet
                    echo nl2br(htmlspecialchars($donnees2['commentaire']));
                    ?>
                    <br />
                </p>
            </td>
        </tbody>
    </table>
</div> 
