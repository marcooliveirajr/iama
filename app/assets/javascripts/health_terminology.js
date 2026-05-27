  $(document).on("ready load change turbo:load", function(){
        var terminologies = $('#map_health_terminology_id');      
        if($('#map_health_terminology_id').length && $(".tuss").length && terminologies.val() != ""){
          $.getJSON("/health_terminologies/terminologies.json?id="+terminologies.val(), function(result){
          $(".tuss").text(result[0].code_tuss);
          $(".measure").text(result[0].measure);
        });
        }
        var terminologies2 = $('#map_tuss2');      
        if($('#map_tuss2').length && $(".tuss").length && terminologies2.val() != ""){
          $.getJSON("/health_terminologies/terminologies.json?id="+terminologies2.val(), function(result){
          $(".tuss2").text(result[0].code_tuss);
          $(".measure2").text(result[0].measure);
        });
        }
        var terminologies3 = $('#map_tuss3');      
        if($('#map_tuss3').length && $(".tuss").length && terminologies3.val() != ""){
          $.getJSON("/health_terminologies/terminologies.json?id="+terminologies3.val(), function(result){
          $(".tuss3").text(result[0].code_tuss);
          $(".measure3").text(result[0].measure);
        });
        }
        var terminologies4 = $('#map_tuss4');      
        if($('#map_tuss4').length && $(".tuss").length && terminologies4.val() != ""){
          $.getJSON("/health_terminologies/terminologies.json?id="+terminologies4.val(), function(result){
          $(".tuss4").text(result[0].code_tuss);
          $(".measure4").text(result[0].measure);
        });
        }
        var terminologies5 = $('#map_tuss5');      
        if($('#map_tuss5').length && $(".tuss").length && terminologies5.val() != ""){
          $.getJSON("/health_terminologies/terminologies.json?id="+terminologies5.val(), function(result){
          $(".tuss5").text(result[0].code_tuss);
          $(".measure5").text(result[0].measure);
        });
        }

      });
