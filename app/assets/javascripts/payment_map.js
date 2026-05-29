$(document).on('turbo:load', function() {
  function getRemoveButton() {
    var $button = $('<button />').attr('class', 'ls-btn remove-Payment').html('<span class="ls-ico-remove"></span>');

    return $button;
  }

  function getLineNumber(value) {
    var $input = $('<input />').attr('type', 'text').attr('class', 'col-md-12').attr('value', getNumber()).attr('name', 'map[payment_maps]['+ value +'][payment_id]');

    return $input;
  }

  function getDatePayment(value) {

    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();

    if(dd<10) {
        dd='0'+dd
    }

    if(mm<10) {
        mm='0'+mm
    }

    today = dd+'/'+mm+'/'+yyyy;

    var $date = $('<input />').attr('type', 'text').attr('class', 'col-md-12').attr('value', today).attr('name', 'map[payment_maps]['+ value +'][payment_date]');

    return $date;
  }

  function getDayPayment(value) {
    var $date = $('<input />').attr('class', 'col-md-12').attr('type', 'text').attr('name', 'map[payment_maps]['+ value +'][pay_day]');

    return $date;
  }

  function getValuePay(value) {
    var $input = $('<input />').attr('class', 'col-md-12 ls-mask-money').attr('type', 'text').attr('name', 'map[payment_maps]['+ value +'][paid_value]');

    return $input;
  }

  function getValueRec(value) {
    var $input = $('<input />').attr('class', 'col-md-12').attr('type', 'text').attr('name', 'map[payment_maps]['+ value +'][recipient]');

    return $input;
  }

  function getValueInputHidden(value) {
    var $input = $('<input />').attr('type', 'text').attr('class', 'col-md-12 ls-mask-money').attr('value', value).attr('name', 'map[payment_maps]['+ value +'][payment_value]');

    return $input;
  }

  function getLine(value) {
    var $line = $('<tr />');

    var $numberColumn = $('<td />');
    var $datePaymentColumn = $('<td />');
    var $datePayDayColumn = $('<td />');
    var $valueColumn = $('<td />');
    var $valuePayColumn = $('<td />');
    var $recipientColumn = $('<td />');
    var $removeColumn = $('<td />');

    $numberColumn.html(getLineNumber(value));
    //$numberColumn.html(getNumber());
    $datePaymentColumn.append(getDatePayment(value));
    $datePayDayColumn.append(getDayPayment(value));
    $valueColumn.append(getValueInputHidden(value));
    $valuePayColumn.append(getValuePay(value));
    $recipientColumn.append(getValueRec(value));
    $removeColumn.append(getRemoveButton());

    $line.append($numberColumn);
    $line.append($datePaymentColumn);
    $line.append($datePayDayColumn);
    $line.append($valueColumn);
    $line.append($valuePayColumn);
    $line.append($recipientColumn);
    $line.append($removeColumn);

    return $line;
  }

  function getLinesLength() {
    return $('#payments tbody tr').length;
  }

  function getNumber() {
    var lastLineNumber = $('#payments tbody tr:last').find('td:first input').val();
    var number = 1;

    if(lastLineNumber) {
      number = parseInt(lastLineNumber);
      number++;
    }

    return number;
  }

  function addPayment(e) {
    if(e) e.preventDefault();

    var value = $('#value').val().toLocaleUpperCase();

    if(value !== '') {
      $('#value').val('');

      if(getLinesLength() === 0) {
        $('.ls-btn-primary').removeAttr('disabled');
        $('#payments').show();
      }

      $('#payments tbody').append(getLine(value));
      $('.ls-mask-money').mask('000.000.000.000.000,00', {reverse: true});
    }
  }

  function removePayment(e) {
    if(e) e.preventDefault();

    $(this).parents('tr').remove();

    if(getLinesLength() === 0) {
      $('#payments').hide();
    }
  }

  $('#add-Payment').off('click').on('click', addPayment);
  $('body').off('click', '.remove-Payment').on('click', '.remove-Payment', removePayment);

});
