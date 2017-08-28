<?php
include'includes/entete.php'
?>
<?php include'includes/menu.php' ?>

<form method="post" action="ajoutClient.php"  class="col-md-offset-4 col-md-4 blocmembre">
    <h1 class="text-center titreinscription"> Inscription </h1>

    <div class="form-group">
        <label for="Email">Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
    </div>
    <div class="form-group">
        <label for="passwd">Mot de Passe</label>
        <input type="password" class="form-control" id="passwd" name="passwd" placeholder="Mot de passe" required>
    </div>
<div id="btnInscription" >
  <button type="submit" class="btn btn-info">Inscription</button>

</div>
</form>
<?php include'includes/footer.php' ?>
</body>
</html>
