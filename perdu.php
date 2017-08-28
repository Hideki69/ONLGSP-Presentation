<?php
//script perdu.php
include 'includes/entete.php';
include 'includes/menu.php';
?>
	<div class="row">
	<form method="post" action="perdu2.php"
		class="col-md-offset-4 col-md-4">
		<div class="form-group">
			<Label>Email</Label>
			<input type="email" name="email"
						 class="form-control">
		</div>
		<div class="form-group text-center">
			<input type="submit" name="btnSub"
						 value="Demander" class="btn btn-success" >
		</div>
	</form>
	</div>


<?php
//pied de page
include 'includes/footer.php';
?>
