$( document ).ready(function() {
  $('#map_health_terminology_id').html("");

  $('#map_health_insurance_id').change(function(){
    var id_rental_period = $('#map_health_insurance_id option:selected').val();

    $('#map_health_terminology_id').html(""); // remove os equipmentos da lista
    $.getJSON("/health_insurances/health_terminologies/version/"+ id_rental_period +".json", function(result){
      var equipment_options = $('#map_health_terminology_id');
      $.each(result, function(item, element) {
        console.log(element.to_s);
        equipment_options.append($("<option />").val(element.id).text(element.to_s));
        console.log(equipment_options.html());
      });
    });
  });
});
