

// Affiche page quand on clique sur le lien

$('#admin').load('ajax/utilisateur.php', function(){
});

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
        if($('#titreBillet').val() != '' && $('#contenuBillet').val() != '' && $('#commentaire').val() != '' && $('#contenuBilletJeux').val() != '')
        {
            $('#validBillet').prop("disabled", false); 
            $('#validBilletJeux').prop("disabled", false); 
            $('#validForm').prop("disabled", false); // Element(s) are now enabled.
        }
        else
        {
            $('#validBillet').prop("disabled", true); 
            $('#validBilletJeux').prop("disabled", true); 
            $('#validForm').prop("disabled", true); // Element(s) are now enabled.
            event.preventDefault();
        }
    });
});
