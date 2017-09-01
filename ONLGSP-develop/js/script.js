jQuery(function($) {
    $('#pseudo').keyup(function(){
        if($('#pseudo').val().length > 3)
        {
            $('#pseudo').css('borderColor','green');
            $('.iconePseudo').css('color','green');
        } 

        else{
            $('#pseudo').css('borderColor','red');
        }
    });

    $('#email').keyup(function(){
        function validateEmail($email)
        {
            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            return emailReg.test( $email );
        }

        if( !validateEmail($('#email').val()))
        { 
            $('#email').css('borderColor','red');
        }

        else
        {
            $('#email').css('borderColor','green');
            $('.iconeEmail').css('color','green');
        }
    });


    $('#password, #confirmPassword').on('keyup', function(e) {

        // Must have capital letter, numbers and lowercase letters
        var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");

        // Must have either capitals and lowercase letters or lowercase and numbers
        var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");

        // Must be at least 6 characters long
        var okRegex = new RegExp("(?=.{6,}).*", "g");

        if (okRegex.test($(this).val()) === false) {
            // If ok regex doesn't match the password
            $('#passwordStrength').removeClass().addClass('alert alert-error').html('Votre mot de passe doit contenir au minimum 6 caractères ! ');

        } else if (strongRegex.test($(this).val())) {
            // If reg ex matches strong password
            $('#passwordStrength').removeClass().addClass('alert alert-success').html('Très bon  niveau de sécurité ! ');
        } else if (mediumRegex.test($(this).val())) {
            // If medium password matches the reg ex
            $('#passwordStrength').removeClass().addClass('alert alert-info').html('Bon niveau de sécurité, ajoutez quand même des caractères spéciaux si vous le voulez !');
        } else {
            // If password is ok
            $('#passwordStrength').removeClass().addClass('alert alert-error').html('Mauvais mot de passe ! Mettez des Majuscule et des nombres !');
        }

        return true;
    });

    $('#conrfirmPassword').keyup(function(){
        if($('#password').val() != $('#conrfirmPassword').val()){
            $('#conrfirmPassword').css('borderColor','red');
        } 

        else{
            $('#conrfirmPassword').css('borderColor','green');
            $('.iconePassword').css('color','green');
        }
    });

    $('.idBouton').click(function(){
        $(".contenuError").show("slow");
    });

    if($('.iconePseudo').css('color') == $('.iconeEmail').css('color') == $('.iconePassword').css('color') == 'red'){
        $('.idBouton').click(function(event){
            event.preventDefault();
        });
    }

    $('input').keyup(function(){
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
    
    $('.figure').on('mouseenter',function(){

          $(this).parent().parent().css('z-index','99999');
          $(this).addClass('figurehover');

        });
        $('.figure').on('mouseleave',function(){

          $(this).parent().parent().css('z-index','1');
          $(this).removeClass('figurehover');

        });
});
