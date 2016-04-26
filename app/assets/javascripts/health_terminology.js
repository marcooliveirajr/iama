$( document ).ready(function() {
  $('#map_health_terminology_id').change(function(){
    var insurance_id = $('#map_health_insurance_id option:selected').val();
    $.getJSON("/health_terminologies/version.json?version_id="+ insurance_id, function(result){
      var terminologies = $('#map_health_terminology_id');
      terminologies.find("option").remove();
      $.each(result, function(item, element) {
        terminologies.append($("<option />")
          .val(element.id)
          .data('tuss', element.code_tuss)
          .data('measure', element.measure)
          .text(element.description_tuss));
      });
      removeElement();
      setTussMeasure();
    });
  });

  $('#map_health_terminology_id').change(function(){
    removeElement();
    setTussMeasure();
  });

  function setTussMeasure() {
    $('.tuss').html($('#map_health_terminology_id').find('option:selected').data('tuss'))
    $('.measure').html($('#map_health_terminology_id').find('option:selected').data('measure'))
  }

  function removeElement() {
      $( '.ls-display-none' ).toggleClass( "ls-display-none", false);
}

});
