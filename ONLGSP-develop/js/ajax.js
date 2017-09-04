

// Affiche page quand on clique sur le lien
$('#utilisateur').on('click',function(){
    $('#admin').load('ajax/utilisateur.php', function(){
    });
});

$('#forumAdmin').on('click',function(){
    $('#admin').load('ajax/forum.php', function(){
    });
});

$('#statAdmin').on('click',function(){
    $('#admin').load('ajax/stats.php', function(){
    });
});


$('#moderation').on('click', function(){
    $('#admin').load('ajax/moderation.php', function(){
    });
});

$('#ajoutBillet').on('click', function(){
    $('#admin').load('ajax/ajoutBillet.php', function(){
    });
});

});
