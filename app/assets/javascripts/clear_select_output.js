(function() {
  function clearSelect() {
      $("#cash_movement_output_id").val(null).trigger("change");
  }

  $('#clear_output').on('click', clearSelect);
}());
