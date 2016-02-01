$( document ).ready(function() {
  $('#map_health_insurance_id').change(function(){
    var id_hospital = $(this).val();

    $.getJSON("/terminology/hospital.json?hospital_id="+ id_hospital, function(result){
      var terminology = $('#map_health_terminology_id');
      terminology.find("option").remove();
      $.each(result, function(item, element) {
        terminology.append($("<option />").val(element.id).text(element.name));
      });
    });
  });
});
