(function() {
  function clearSelect() {
      $("#cash_movement_output_id").val('').change();
  }

  $('#clear_output').on('click', clearSelect);
}());
