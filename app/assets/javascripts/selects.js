var clinica = clinica || {}

clinica.selects = (function() {
  'use script';

  function init() {
    $(".js-example-basic-single").select2();
    selectOptions();
  }

  function selectOptions() {
    $(".select2").select2({
      //minimumInputLength: 1
      allowClear: true
    });
  }

  return {
    init: init
  }
}());

$(document).ready(clinica.selects.init);
