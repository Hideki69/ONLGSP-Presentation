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
        $('input').on('keyup',function(){
            if($('.titreBillet').val() != '' && $('#contenuBillet').val() != '')
            {
                $('#validBillet').prop("disabled", false); 
            }
            else
            {
                $('#validBillet').prop("disabled", true); 
                event.preventDefault();
            }

            if($('.commentaireJeux').val() != ''){
                $('.validForm').prop("disabled", false);
            }

            else{
                $('.validForm').prop("disabled", true); 
                event.preventDefault();
            }

            if($('.commentaireDiscussion').val() != ''){
                $('#validForm').prop("disabled", false);
            }

            else{
                $('#validForm').prop("disabled", true); 
                event.preventDefault();
            }

            if($('#contenuBilletJeux').val() != '' && $('#titreBilletJeux').val() != '' ){
                $('#validBilletJeux').prop("disabled", false);
            }

            else{
                $('#validBilletJeux').prop("disabled", true); 
                event.preventDefault();
            }
        });
    });
});
