
<?php include'includes/entete.php' ?>

<!-- menu si connecté et Admin -->
<?php if(isset($_SESSION['auth'])  && ($_SESSION['role'])): ?>
<?php include'includes/menu.php' ?>
<div class=" blocAjax col-md-12">
    <div class="row">
        <div id="admin">
        </div>
        <?php include'includes/sidebar.php'; ?>
    </div>
</div>
<?php include'includes/basPage.php' ?>



<!-- menu si connecté -->
<?php elseif(isset($_SESSION['auth'])): ?>
<?php include'includes/menu.php' ?>
<?php include'includes/news.php' ?>
<?php include'includes/listeJeux.php' ?>
<?php include'includes/forfait.php' ?>
<?php include'includes/pourquoi.php' ?>
<?php include'includes/imgPanel.php' ?>
<?php include'includes/footer.php' ?>
<?php include'includes/basPage.php' ?>

<!-- menu si non connecté -->
<?php else: ?>
<?php include'includes/menu.php' ?>
<?php include'includes/news.php' ?>
<?php include'includes/listeJeux.php' ?>
<?php include'includes/forfait.php' ?>
<?php include'includes/pourquoi.php' ?>
<?php include'includes/imgPanel.php' ?>
<?php include'includes/footer.php' ?>
<?php include'includes/basPage.php' ?>

<?php endif; ?>
