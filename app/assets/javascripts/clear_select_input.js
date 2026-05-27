$(document).on('turbo:load', function() {
  function clearSelect() {
      $("#cash_movement_input_id").val('').change();
  }

  $('#clear_input').on('click', clearSelect);
});
