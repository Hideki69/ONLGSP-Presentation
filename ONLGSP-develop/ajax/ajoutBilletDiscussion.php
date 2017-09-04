<?php include'../includes/connexion.php'; ?>
<div class="col-md-offset-5 col-md-4">
    <h2 class="text-center"> Ajouter des Billets Discussions </h2>
    <form method="post" action="traitementBillet.php" class="jumbotron">
        <div class="col-md-offset-3">
            <label class="col-md-offset-1" for="titreBillet"> Titre du Billet </label><br>
            <input type="text" name="titreBillet" id="titreBillet" required><br>

            <input type="hidden" name="auteurBillet" id="auteurBillet" value="<?= $_SESSION['pseudo'] ?>"><br>

            <label for="contenuBillet"> Ecrivez votre nouveau billet</label><br>
            <input type="text" name="contenuBillet" id="contenuBillet" required>

            <input type="hidden" id="idUsers" name="idUsers" value="<?= $_SESSION['id'] ?>">
            <button class="btn btn-submit" type="submit" name="validBillet" id="validBillet" disabled> Envoyez </button>
        </div>
    </form>
</div>

