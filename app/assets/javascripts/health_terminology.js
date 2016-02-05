$( document ).ready(function() {
  $('#map_health_insurance_id').change(function(){
    var insurance_id = $('#map_health_insurance_id option:selected').val();

    $.getJSON("/health_terminologies/version.json?version_id="+ insurance_id, function(result){
      var terminologies = $('#map_health_terminology_id');
      terminologies.find("option").remove();
      $.each(result, function(item, element) {
        terminologies.append($("<option />").val(element.id).text(element.description_tuss));
      });
    });
  });
});
