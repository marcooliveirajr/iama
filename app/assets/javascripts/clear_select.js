(function() {
  function clearSelect() {
      $("#cash_movement_input_id").select2("val", "");
    }
  }

  $('#clear_input').on('click', clearSelect);
}());
