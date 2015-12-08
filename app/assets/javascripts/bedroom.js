$( document ).ready(function() {
  $('#map_hospital_id').change(function(){
    var id_hospital = $(this).val();

    $.getJSON("/bedrooms/hospital.json?hospital_id="+ id_hospital, function(result){
      var bedrooms = $('#map_bedroom_id');
      bedrooms.find("option").remove();
      $.each(result, function(item, element) {
        bedrooms.append($("<option />").val(element.id).text(element.name));
      });
    });
  });
});
