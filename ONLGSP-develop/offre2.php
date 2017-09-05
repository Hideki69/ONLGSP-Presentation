<?php 
include'includes/entete.php';
include'includes/menu.php';
include'includes/connexion.php';
?>

<h1 class="titreForfait1 text-center"> Forfait Mensuel </h1>

<?php if(isset($_SESSION['auth'])): ?>
<div id="ancreForfait" class="col-md-12 text-center">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 col-xs-12">
            <p class="text-center">Detail des offres</p>
            <table class="col-xs-4  table table-striped table-hover">
                <thead>
                    <tr>
                        <th class="text-center">Type de Forfaits</th>
                        <th class="text-center">Free</th>
                        <th class="text-center">Prémium Annuel</th>
                        <th class="text-center">Premium A vie</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-center">Protège votre identité et vos transactions en ligne</td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                        <td class="text-center">Save serveur</td>
                        <td class="text-center"><i class="fa fa-times" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                        <td class="text-center">Module pour PayPal</td>
                        <td class="text-center"><i class="fa fa-times" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                        <td class="text-center">Module pour Forum</td>
                        <td class="text-center"><i class="fa fa-times" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                    <tr>
                        <td class="text-center">Module pour Facture</td>
                        <td class="text-center"><i class="fa fa-times" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                        <td class="text-center"><i class="fa fa-check" aria-hidden="true"></i></td>
                    </tr>
                </tbody>
            </table>
            <div class="col-md-offset-9 col-md-2 paypal1">
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                    <input type="hidden" name="cmd" value="_s-xclick">
                    <input type="hidden" name="hosted_button_id" value="V4QBV8SEXF5PU">
                    <input type="image" src="https://www.paypalobjects.com/fr_FR/FR/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal, le réflexe sécurité pour payer en ligne">
                    <img alt="" border="0" src="https://www.paypalobjects.com/fr_FR/i/scr/pixel.gif" width="1" height="1">
                </form>

            </div>
        </div>
    </div>
</div>

<?php else: ?>

<h2 class="titreNoConnect text-center"> Vous devez vous inscrire et/ou vous connectez avant de pouvoir accéder au module d\'achat de votre forfait mensuel ! </h2>

<form class="formNoConnect col-md-offset-3 col-md-6" method="post" action="login.php">
    <div class="input">
        <label for="email">Email</label>
        <input type="text" name="email" class="form-control" placeholder="Email" required>
    </div>
    <div class="input">
        <label for="mdp">Mot de passe</label>
        <input type="password" name="password" id="mdp" class="form-control" placeholder="Mot de passe" required>
    </div>
    <button id="btn-connexion" type="submit" class="btn btn-info btn-center">Se connecter</button>
    <a href="perdu.php">Mot de passe perdu</a>
</form>

<?php endif; ?>


<?php 
include'includes/footer.php';
include'includes/basPage.php';
?>