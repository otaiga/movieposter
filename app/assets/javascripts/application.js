// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function(){
    $('#submitForm').click(function(){
        var formToSubmit;
        if( $('#movieForm').val() ){
            formToSubmit='#submitMovie';
        }
        else if( $('#albumForm').val() ){
            formToSubmit='#submitAlbum';
        }
         if( $('#albumForm, #movieForm').val() ){
          alert('Sorry, you cant fill in both forms');
          return false;

        }
        if(formToSubmit!==null){
            $(formToSubmit).submit();
        }
        return false;
    });
});