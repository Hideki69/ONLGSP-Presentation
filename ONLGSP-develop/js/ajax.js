

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
