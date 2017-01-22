  $(function () {
    $('#datetimepicker').datetimepicker({
      locale: 'pt-br',
      format: 'L LT',
      sideBySide: true
    });
    $('#datetimepicker2').datetimepicker({
      locale: 'pt-br',
      format: 'L LT',
      sideBySide: true
    });
    $('#datetimepicker3').datetimepicker({
      locale: 'pt-br',
      format: 'L LT',
      sideBySide: true
    });
    $('#start_on_duty').datetimepicker({
      locale: 'pt-br',
      format: 'L LT',
      sideBySide: true
    });
    $('#end_on_duty').datetimepicker({
      locale: 'pt-br',
      format: 'L LT',
      sideBySide: true
    });
    $('#receipt_day').datetimepicker({
      locale: 'pt-br',
      format: 'L',
      widgetPositioning: {
            horizontal: 'auto',
            vertical: 'bottom'
         }
    });
    $('#time_movement').datetimepicker({
      locale: 'pt-br',
      format: 'L',
    });
  });
