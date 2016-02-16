$( document ).ready(function() {
  $('#map_health_insurance_id').change(function(){
    var insurance_id = $('#map_health_insurance_id option:selected').val();

    $.getJSON("/health_terminologies/version.json?version_id="+ insurance_id, function(result){
      var terminologies = $('#map_health_terminology_id');
      terminologies.find("option").remove();
      $.each(result, function(item, element) {
        terminologies.append($("<option />")
          .val(element.id)
          .data('tuss', element.code_tuss)
          .data('size', element.size)
          .text(element.description_tuss));
      });
      removeElement();
      setTussSize();
    });
  });

  $('#map_health_terminology_id').change(function(){
    removeElement();
    setTussSize();
  });

  function setTussSize() {
    $('.tuss').html($('#map_health_terminology_id').find('option:selected').data('tuss'))
    $('.size').html($('#map_health_terminology_id').find('option:selected').data('size'))
  }

  function removeElement() {
      $( '.ls-display-none' ).toggleClass( "ls-display-none", false);
}

});
