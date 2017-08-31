<?php
include'includes/entete.php'
?>
<?php include'includes/menu.php' ?>

<div class="col-md-12">

    <form method="post" action="ajoutUsers.php"  class="col-md-offset-3 col-md-6 blocmembre">
        <h1 class="text-center titreinscription"> Inscription </h1>
        <div class="form-group">
            <label for="pseudo">Pseudo</label>
            <input type="text" class="form-control" id="pseudoAdmin" name="pseudo" placeholder="Votre Pseudo" required>
        </div>
        <div class="form-group">
            <label for="Email">Email</label>
            <input type="email" class="form-control" id="emailAdmin" name="email" placeholder="Email" required>
        </div>
        <div class="form-group">
            <label for="password">Mot de Passe</label>
            <input type="password" class="form-control" id="passwordAdmin" name="password" placeholder="Mot de passe" required>
        </div>
        <div class="form-group">
            <label for="password">Confirmation</label>
            <input type="password" class="form-control" id="passwdAdmin" placeholder="Confirmation du mot de passe" required>
        </div>
        <div class="form-group">
            <input type="hidden" class="form-control" id="role" name="role" value="1" >
        </div>
        <div id="btnInscription" >
            <button type="submit" class="btn btn-info">Inscription</button>
        </div>
        <div class="contenu"></div>
    </form>
</div>
<?php include'includes/footer.php' ?>
</body>
</html>
