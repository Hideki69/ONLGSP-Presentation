<?php include'../includes/connexion.php'; ?>
    <div class="col-md-offset-5  col-md-4">
        <h2 class="text-center"> Ajout de Billet Jeux</h2>
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
