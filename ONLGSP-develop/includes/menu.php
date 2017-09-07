<header>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="row">
                <div class="bloc">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="col-xs-12 col-md-2 navbar-header">
                        <button type="button" class="navbar-toggle collapsed col-xs-2" data-toggle="collapse" data-target="#menu" aria-expanded="true">
                            <span class="sr-only">Menu ONLGSP</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand col-xs-8" href="index.php"><img class="col-md-offset-4 logo img-responsive" src="images/Logo.png" alt="Logo ONLGSP"></a>
                    </div>

                        <!-- menu si connecté et Admin -->
                      <?php if(isset($_SESSION['auth'])  && ($_SESSION['role'])): ?>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="menu">
                            <ul class="nav navbar-nav">
                              <li><a  href="#" id="utilisateur">Liste utilisateur</a></li>
                              <li><a href="#" id="statAdmin">Stats</a></li>
                            </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><i class="glyphicon glyphicon-user"></i>
                                <?= $_SESSION['pseudo']; ?></a>
                            </li>
                            <li><a href="deconnexion.php">
                                <i class="glyphicon glyphicon-off"></i>Déconnecter</a></li>
                        </ul>

                        <!-- menu si connecté -->
                        <?php elseif(isset($_SESSION['auth'])): ?>
                          <!-- Collect the nav links, forms, and other content for toggling -->
                          <div class="collapse navbar-collapse" id="menu">
                              <ul class="nav navbar-nav">
                                  <li><a href="index.php">Accueil <span class="sr-only">(current)</span></a></li>
                                  <li><a href="#ancreForfait" role="button" aria-haspopup="true" aria-expanded="false">Forfait</a></li>
                                  <li class="dropdown">
                                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">A propos<span class="caret"></span></a>
                                      <ul class="dropdown-menu">
                                          <li><a href="http://steamcommunity.com/id/OpenNoobLinuxGameServeurProvider" target="_blank" >Steam</a></li>
                                          <li><a href="https://www.facebook.com/Open-Noob-Game-Serveur-Provider-529004257451467/?fref=ts" target="_blank" >Facebook</a></li>
                                          <li><a href="https://twitter.com/OpenNoobGame" target="_blank" >Twitter</a></li>
                                      </ul>
                                  </li>
                                  <li><a href="sectionJeu.php">Forum</a></li>
                              </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><i class="glyphicon glyphicon-user"></i>
                                <?= $_SESSION['pseudo']; ?></a>
                            </li>

                            <li><a href="deconnexion.php">
                                <i class="glyphicon glyphicon-off"></i>Déconnecter</a></li>
                        </ul>

                        <!-- menu si non connecté -->
                        <?php else: ?>
                          <!-- Collect the nav links, forms, and other content for toggling -->
                          <div class="collapse navbar-collapse" id="menu">
                              <ul class="nav navbar-nav">
                                  <li><a href="index.php">Accueil <span class="sr-only">(current)</span></a></li>
                                  <li><a href="#ancreForfait" role="button">Forfait</a></li>
                                  <li class="dropdown">
                                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">A propos<span class="caret"></span></a>
                                      <ul class="dropdown-menu">
                                          <li><a href="http://steamcommunity.com/id/OpenNoobLinuxGameServeurProvider" target="_blank" >Steam</a></li>
                                          <li><a href="https://www.facebook.com/Open-Noob-Game-Serveur-Provider-529004257451467/?fref=ts" target="_blank" >Facebook</a></li>
                                          <li><a href="https://twitter.com/OpenNoobGame" target="_blank">Twitter</a></li>
                                      </ul>
                                  </li>
                                  <li><a href="forum.php">Forum</a></li>
                              </ul>
                        <ul class="col-xs-11 col-sm-7 col-md-3 nav navbar-nav navbar-right">
                            <li><a href="inscription.php"><i class="glyphicon glyphicon-list-alt"></i> Créer un compte</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-log-in"></i> Se connecter<span class="caret"></span></a>


                                <ul id="menu-connexion"class="dropdown-menu">
                                    <form method="post" action="login.php">
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
                                </ul>
                            </li>
                        </ul>
                        <?php endif; ?>

                    </div><!-- /.navbar-collapse -->
                </div> <!-- row -->
            </div> <!-- bloc -->
        </div><!-- /.container-fluid -->
    </nav>
</header>
