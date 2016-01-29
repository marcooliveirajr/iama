$( document  ).ready(function() {
    $('#map_health_terminology_id').html("");

    $('#map_health_insurance_id').change(function(){
      var insurance_id = $('#map_health_insurance_id option:selected').val();

        $('#map_health_terminology_id').html("");
        $.getJSON("/health_insurance/health_terminology/"+ insurance_id +".json", function(result){
           var terminology_options = $('#map_health_terminology_id');
           $.each(result, function(item, element) {
             console.log(element.to_s);
             terminology_options.append($("<option />").val(element.id).text(element.to_s));
             console.log(terminology_options.html());
           });
         });
     });
});
