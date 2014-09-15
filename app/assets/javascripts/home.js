

$(document).on('ready page:load', function(){
        var attending = true;
        $("#option").click(function(){
           if(attending == true){
           	$("#option").html("AM NOT ATTENDING");
           	attending = false;
           }else{
           	$("#option").html("AM ATTENDING");
           	attending = true;
           }

           })

        $("#submit").on("click", function() {
          
          $.ajax({
          type: 'POST',
          url: '/rsvp',
          data: {name: $("#input1").val(), invite: $("#input2").val(), 
                 attend: attending},
         });

          $("#block1, #block2, #block3, #option, #submit").remove();

        });
        
        $("#footer").on('click', function(){

          window.location.assign('http://hsin.cool')
        });



    })
