$(document).ready(function(){

  // parametrage ajax
  $.ajaxSetup({
    method: 'POST',
    dataType: 'json'
  });

  // formulaire soumis
  $('#myForm').on('submit', function(e){
    // pour eviter soumission HTML
    e.preventDefault();
    // alert($(this).serialize());
    $.ajax({
      url: 'ajoutClient.php',
      data: $(this).serialize(),
      error: function(xhr, msg){
        $('.contenu').append('<p>' + xhr.status + ' Il y a une erreur ! ' + msg + '</p>');
      },
      success: function(data){
        alert(data);
        if(data.hasOwnProperty('id')){
          $('.contenu').append('<p> Vous avez été enregistrer ! (id:'+ data.id + ')</p>');
        }
        else {
          $('.contenu').append('<p>' + data.err + '</p>');
        }
      }
    });
  });
});
