

// Affiche page quand on clique sur le lien
$('#utilisateur').click(function(){
    $('#admin').load('ajax/utilisateur.php', function(){
    });
});

$('#forumAdmin').click(function(){
    $('#admin').load('ajax/forum.php', function(){
    });
});

$('#statAdmin').click(function(){
    $('#admin').load('ajax/stats.php', function(){
    });
});
