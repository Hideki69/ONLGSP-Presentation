<?php
include'includes/entete.php'
?>
<?php include'includes/menu.php' ?>

<div class="col-md-12">
    <form id="myForm" class="col-md-offset-3 col-md-6 blocmembre">
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
            <label for="passwd">Mot de Passe</label>
            <input type="password" class="form-control" id="passwd" name="passwd" placeholder="Mot de passe" required>
        </div>
        <div class="form-group">
            <label for="passwd">Confirmation</label>
            <input type="password" class="form-control" id="passwd" name="passwd" placeholder="Confirmation du mot de passe" required>
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
