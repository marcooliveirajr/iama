  $(document).on("ready load change", function(){
        var terminologies = $('#map_health_terminology_id');      
        if($('#map_health_terminology_id').length && $(".tuss").length && terminologies.val() != ""){
          $.getJSON("/health_terminologies/terminologies.json?id="+terminologies.val(), function(result){
          $(".tuss").text(result[0].code_tuss);
          $(".measure").text(result[0].measure);
        });
        }
      });
