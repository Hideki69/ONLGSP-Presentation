
<?php include'includes/entete.php' ?>

<!-- menu si connecté et Admin -->
<?php if(isset($_SESSION['auth'])  && ($_SESSION['role'])): ?>
<?php include'includes/menu.php' ?>
<div id="admin"></div>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
<script src="js/ajax.js"></script>
<script>
    $(function() {
        $('#admin').load('ajax/utilisateur.php', function(){

        });
<<<<<<< HEAD

        $('#billetdiscussion').on('click', function(){
            $('#admin').load('ajax/ajoutBilletDiscussion.php', function(){
            });
        });

        $('#billetjeux').on('click', function(){
            $('#admin').load('ajax/ajoutBilletJeux.php', function(){
            });
        });
=======
        
>>>>>>> 45ea2cd0c8e99af355a1eee0101f0d331e5c642a
    });

</script>
</body>
</html>


<!-- menu si connecté -->
<?php elseif(isset($_SESSION['auth'])): ?>
<?php include'includes/menu.php' ?>
<?php include'includes/news.php' ?>
<?php include'includes/listeJeux.php' ?>
<?php include'includes/forfait.php' ?>
<?php include'includes/imgPanel.php' ?>
<?php include'includes/footer.php' ?>
<?php include'includes/basPage.php' ?>

<!-- menu si non connecté -->
<?php else: ?>
<?php include'includes/menu.php' ?>
<?php include'includes/news.php' ?>
<?php include'includes/listeJeux.php' ?>
<?php include'includes/forfait.php' ?>
<?php include'includes/imgPanel.php' ?>
<?php include'includes/footer.php' ?>
<?php include'includes/basPage.php' ?>

<?php endif; ?>
