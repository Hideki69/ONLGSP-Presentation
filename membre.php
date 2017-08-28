<?php 
include'includes/entete.php'
?>
<<<<<<< HEAD
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <title> Login / Inscription </title>
    </head>
    <body>
        <?php include'includes/menu.php' ?>

        <form method="post" action="formulaireInscription.php"  class="col-md-offset-4  col-md-4">
            <h1 class="text-center titreinscription"> Inscription </h1>
            <div class="form-group">
                <label for="nom">Nom</label>
                <input type="text" class="form-control" id="nom" name="nom" placeholder="Nom" minlength=2 required >
            </div>
            <div class="form-group">
                <label for="Prenom">Prénom</label>
                <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Prénom" minlength=2 required>
            </div>
            <div class="form-group">
                <label for="Adresse">Adresse</label>
                <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Adresse" minlength=5 required>
            </div>     

            <div class="form-group">
                <label for="CodePostal">Code Postal</label>
                <input type="number" class="form-control" id="cp" name="cp" placeholder="Code Postal" minlength=5 required>
            </div>
            <div class="form-group">
                <label for="Ville">Ville</label>
                <input type="text" class="form-control" id="ville" name="ville" placeholder="Ville" minlength=2 required>
            </div>
            <div class="form-group">
                <label for="pays">Pays</label>
                <input type="text" class="form-control" id="pays" name="pays" placeholder="Pays" minlength=5 required>
            </div>
            <div class="form-group">
                <label for="Téléphone">Téléphone</label>
                <input type="tel" class="form-control" id="telephone" name="telephone" placeholder="Téléphone" minlength=10 required>
            </div>
            <div class="form-group">
                <label for="Email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <label for="passwd"> Mot de Passe</label>
                <input type="password" class="form-control" id="cp" name="cp" placeholder="Code Postal" required>
            </div>
            <div class="form-group">
                <label for="IP">IP Serveur</label>
                <input type="text" class="form-control" id="ip" name="ip" placeholder="IP" required>
            </div>

            <button type="submit" class="btn btn-default">Inscription</button>
        </form>
        <?php include'includes/footer.php' ?>
    </body>
=======
<?php include'includes/menu.php' ?>

<form method="post" action="formulaireInscription.php"  class="col-md-offset-4 col-md-4 blocmembre">
    <h1 class="text-center titreinscription"> Inscription </h1>
    <div class="form-group">
        <label for="nom">Nom</label>
        <input type="text" class="form-control" id="nom" name="nom" placeholder="Nom" minlength=2 required >
    </div>
    <div class="form-group">
        <label for="Prenom">Prénom</label>
        <input type="text" class="form-control" id="prenom" name="prenom" placeholder="Prénom" minlength=2 required>
    </div>
    <div class="form-group">
        <label for="Adresse">Adresse</label>
        <input type="text" class="form-control" id="adresse" name="adresse" placeholder="Adresse" minlength=5 required>
    </div>     

    <div class="form-group">
        <label for="CodePostal">Code Postal</label>
        <input type="number" class="form-control" id="cp" name="cp" placeholder="Code Postal" minlength=5 required>
    </div>
    <div class="form-group">
        <label for="Ville">Ville</label>
        <input type="text" class="form-control" id="ville" name="ville" placeholder="Ville" minlength=2 required>
    </div>
    <div class="form-group">
        <label for="pays">Pays</label>
        <input type="text" class="form-control" id="pays" name="pays" placeholder="Pays" minlength=5 required>
    </div>
    <div class="form-group">
        <label for="Téléphone">Téléphone</label>
        <input type="tel" class="form-control" id="telephone" name="telephone" placeholder="Téléphone" minlength=10 value="+33" required>
    </div>
    <div class="form-group">
        <label for="Email">Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
    </div>
    <div class="form-group">
        <label for="passwd"> Mot de Passe</label>
        <input type="password" class="form-control" id="cp" name="cp" placeholder="Code Postal" required>
    </div>
    <div class="form-group">
        <label for="IP">IP Serveur</label>
        <input type="text" class="form-control" id="ip" name="ip" placeholder="IP" required>
    </div>

    <button type="submit" class="btn btn-default">Inscription</button>
</form>
<?php include'includes/footer.php' ?>
</body>
>>>>>>> de0b51fea71c72f25cccdbd840d0c91a913cc55e
</html>