<?php
include'includes/entete.php'
?>
<?php include'includes/menu.php' ?>

<div class="col-md-12">
    <form method="post" action="ajoutUsers.php" id="myForm" class="col-md-offset-3 col-md-6 blocmembre">
        <h1 class="text-center titreinscription"> Inscription </h1>
        <div class="form-group">
            <label for="pseudo">Pseudo</label>
            <input type="text" class="form-control" id="pseudo" name="pseudo" placeholder="Votre Pseudo" required>
        </div>
        <div class="form-group">
            <label for="Email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
        </div>
        <div class="form-group">
            <label for="password">Mot de Passe</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Mot de passe" required>
        </div>
        <div class="form-group">
            <label for="conrfirmPassword">Confirmation Mot de Passe</label>
            <input type="password" class="form-control" id="conrfirmPassword" name="confirmPassword" placeholder="Confirmation du mot de passe" required>
        </div>
        <input type="hidden" name="role" value="0">
        <div id="btnInscription" >
            <button type="submit" class="idBouton btn btn-info">Inscription</button>
        </div>
        <div class="contenuError" style="display: none;"><i class="fa fa-check-square" id="redIcone" aria-hidden="true"><h2 class="colorError"> Vous n'avez pas remplis tout les champs avec les règles demandés </h2></i></div>


        <div class="regleForm">
            <i class="fa fa-check-square iconePseudo" aria-hidden="true"><p>Pseudo : Veuillez Entrez au minimum 3 caractères </p></i><br/>
            <i class="fa fa-check-square iconeEmail" aria-hidden="true"><p>Email : Veuillez respectez la norme : blabla@blabla.bla </p></i><br/>
            <i class="fa fa-check-square iconePassword" aria-hidden="true"><p>Password : Doit contenir des majuscules, des nombres, des minuscules et 6 caractères minimum (Copier/Coller interdit).</p></i><br/>
            <div class="" id="passwordStrength"></div>
        </div>
    </form>
</div>
<?php
    include'includes/footer.php';
include'includes/basPage.php';
?>
