<?php include'../includes/connexion.php'; ?>
<div class="row">
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
</div>
<div class="col-md-8 col-md-offset-1">
    <div class="row">
        <div class="col-md-6 fondticket">
            <h2 class="text-center"> Ajouter des Billets Discussions </h2>
            <form method="post" action="traitementBillet.php" class="jumbotron">
                <div class="col-md-offset-3">
                    <label class="text-center" for="titreBillet"> Titre du Billet </label><br>
                    <input type="text" name="titreBillet" id="titreBillet" required><br>

                    <input type="hidden" name="auteurBillet" id="auteurBillet" value="<?= $_SESSION['pseudo'] ?>"><br>

                    <label for="contenuBillet"> Ecrivez votre nouveau billet</label><br>
                    <input type="text" name="contenuBillet" id="contenuBillet" required>

                    <input type="hidden" id="idUsers" name="idUsers" value="<?= $_SESSION['id'] ?>">
                    <button class="btn btn-submit" type="submit" name="validBillet" id="validBillet" disabled> Envoyez </button>
                </div>
            </form>
        </div>


        <div class="col-md-6 fondticket">
            <h2 class="text-center"> Ajout de Billet Jeux</h2>
            <form method="post" action="traitementBilletJeux.php" class="jumbotron">
                <div class="col-md-offset-3">
                    <label class="text-center" for="titreBilletJeux"> Titre du Billet </label><br>
                    <input type="text" name="titreBilletJeux" id="titreBilletJeux" required><br>

                    <input type="hidden" name="auteurBilletJeux" id="auteurBilletJeux" value="<?= $_SESSION['pseudo'] ?>"><br>

                    <label for="contenuBillet"> Ecrivez votre nouveau billet</label><br>
                    <input type="text" name="contenuBilletJeux" id="contenuBilletJeux" required>

                    <input type="hidden" id="idUsers" name="idUsers" value="<?= $_SESSION['id'] ?>">
                    <button class="btn btn-submit" type="submit" name="validBilletJeux" id="validBilletJeux" disabled> Envoyez </button>
                </div> 
            </form>
        </div>

        <div class="col-md-6 fondticket">
            <h2 class="text-center"> Ajout de Commentaire Discussion</h2>
            <form class="jumbotron" method="post" action="commentaire_post.php?billet=<?= $safe['billet']; ?>">
                <div class="col-md-offset-3">
                    <input type="hidden" name="id_billet" value="<?= $safe['billet'] ?>">
                    <input type="hidden" name="auteur" id="auteur" value="<?= $_SESSION['pseudo'] ?>">
                    <input type="text" name="commentaire" id="commentaire" placeholder="Tapez Votre Commentaire .. ">
                    <button  class="btn btn-submit" type="submit" name="validForm" id="validForm" disabled> Envoyez </button>
                </div> 
            </form>
        </div>

        <div class="col-md-6 fondticket">
            <h2 class="text-center"> Ajout de Commentaire Jeux</h2>
            <form class="jumbotron" method="post" action="commentaireJeux_post.php?billet=<?= $safe['billet']; ?>">
                <div class="col-md-offset-3">
                    <input type="hidden" name="id_billetJeux" value="<?= $safe['billet'] ?>">
                    <input type="hidden" name="auteur" id="auteur" value="<?= $_SESSION['pseudo'] ?>">
                    <input type="text" name="commentaire" id="commentaire" placeholder="Tapez Votre Commentaire .. ">
                    <button  class="btn btn-submit" type="submit" name="validForm" id="validForm" disabled> Envoyez </button>
                </div>
            </form>
        </div>
    </div>
</div>