

// Affiche page quand on clique sur le lien
$('#utilisateur').click(function(){
    $('#admin').load('ajax/utilisateur.php', function(){
    });
});

$('#forumAdmin').click(function(){
    $('#admin').load('ajax/forum.php', function(){
    });
});


$('#moderation').on('click', function(){
    $('#admin').load('ajax/moderateur.php', function(){
    });
});

$('#ajoutBilletDiscussion').on('click', function(){
    $('#admin').load('ajax/ajoutBilletDiscussion.php', function(){
    });
});

$('#ajoutBilletJeux').on('click', function(){
    $('#admin').load('ajax/ajoutBilletJeux.php', function(){
    });
});