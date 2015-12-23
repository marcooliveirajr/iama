(function() {
  function getRemoveButton() {
    var $button = $('<button />').attr('class', 'ls-btn remove-Payment').html('<span class="ls-ico-remove"></span>');

    return $button;value
  }

  function getLineNumber(value) {
    var $input = $('<input />').attr('type', 'text').attr('class', 'col-md-12').attr('value', getNumber()).attr('name', 'map[payment_maps['+ value +'[payment_id]]]');

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

    var $date = $('<input />').attr('type', 'text').attr('class', 'col-md-12').attr('value', today).attr('name', 'map[payment_maps['+ value +'[payment_date]]]');

    return $date;
  }


  function getValuePay(value) {
    var $input = $('<input />').attr('class', 'col-md-12').attr('type', 'text').attr('name', 'map[payment_maps['+ value +'[paid_value]]]');

    return $input;
  }

  function getValueInputHidden(value) {
    var $input = $('<input />').attr('type', 'text').attr('class', 'col-md-12').attr('value', value).attr('name', 'map[payment_maps['+ value +'[payment_value]]]');

    return $input;
  }

  function getLine(value) {
    var $line = $('<tr />');

    var $numberColumn = $('<td />');
    var $datePaymentColumn = $('<td />');
    var $valueColumn = $('<td />');
    var $valuePayColumn = $('<td />');
    var $removeColumn = $('<td />');

    $numberColumn.html(getLineNumber(value));
    //$numberColumn.html(getNumber());
    $datePaymentColumn.append(getDatePayment(value));
    $valueColumn.append(getValueInputHidden(value));
    $valuePayColumn.append(getValuePay(value));
    $removeColumn.append(getRemoveButton());

    $line.append($numberColumn);
    $line.append($datePaymentColumn);
    $line.append($valueColumn);
    $line.append($valuePayColumn);
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

  function addPayment() {
    var value = $('#value').val().toLocaleUpperCase();

    if(value !== '') {
      $('#value').val('');

      if(getLinesLength() === 0) {
        $('.ls-btn-primary').removeAttr('disabled');
        $('#payments').show();
      }

      $('#payments tbody').append(getLine(value));
    }
  }

  function removePayment() {
    $(this).parents('tr').remove();

    if(getLinesLength() === 0) {
      $('#payments').hide();
    }
  }

  $('#add-Payment').on('click', addPayment);
  $('body').on('click', '.remove-Payment', removePayment);

}());
