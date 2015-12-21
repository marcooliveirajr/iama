(function() {
  function getRemoveButton() {
    var $button = $('<button />').attr('class', 'ls-btn remove-Payment').html('<span class="ls-ico-remove"></span>');

    return $button;service_key
  }

  function getPriceCheckbox(key) {

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

    var $check = $('<input />').attr('type', 'text').attr('class', 'col-md-12').attr('value', today).attr('name', 'key[keys['+ key +'[priceable]]]');

    return $check;
  }


  function getParentInput(key) {
    var $input = $('<input />').attr('class', 'col-md-12').attr('type', 'text').attr('name', 'key[keys['+ key +'[parent]]]');

    // if(getLinesLength() === 0) {
    //   $input.attr('disabled', 'disabled');
    // }

    return $input;

  }

  function getKeyInputHidden(key) {
    var $input = $('<input />').attr('type', 'hidden').attr('name', 'key[keys[' + key + '[key]]]').attr('value', key);

    return $input;
  }

  function getNumberInputHidden(key, number) {
    var $input = $('<input />').attr('type', 'hidden').attr('name', 'key[keys[' + key + '[number]]]').attr('value', number);

    return $input;
  }

  function getLine(key) {
    var $line = $('<tr />');

    var $numberColumn = $('<td />');
    var $priceColumn = $('<td />');
    var $keyColumn = $('<td />');
    var $rootColumn = $('<td />');
    var $removeColumn = $('<td />');

    $numberColumn.html(getLineNumber());
    $numberColumn.append(getNumberInputHidden(key, getLineNumber()));

    $keyColumn.html(key);
    $keyColumn.append(getKeyInputHidden(key));

    $priceColumn.append(getPriceCheckbox(key));
    $rootColumn.append(getParentInput(key));
    $removeColumn.append(getRemoveButton());

    $line.append($numberColumn);
    $line.append($priceColumn);
    $line.append($keyColumn);
    $line.append($rootColumn);
    $line.append($removeColumn);

    return $line;
  }

  function getLinesLength() {
    return $('#keys tbody tr').length;
  }

  function getLineNumber() {
    var lastLineNumber = $('#keys tbody tr:last').find('td:first').html();
    var number = 1;

    if(lastLineNumber) {
      number = parseInt(lastLineNumber);
      number++;
    }

    return number;
  }

  function existsKey(key) {
    return $('#keys tbody').find('input[value="' + key + '"]').length > 0;
  }

  function addPayment() {
    var key = $('#service_key').val().toLocaleUpperCase();

    //if(!existsKey(key) && key !== '') {
    if(key !== '') {
      $('#service_key').val('');

      if(getLinesLength() === 0) {
        $('.ls-btn-primary').removeAttr('disabled');
        $('#keys').show();
      }

      $('#keys tbody').append(getLine(key));
    }
  }

  function removePayment() {
    $(this).parents('tr').remove();

    if(getLinesLength() === 0) {
      $('.ls-btn-primary').attr('disabled', 'disabled');
      $('#keys').hide();
    } else if(getLinesLength() === 1) {
      $('#keys .root').attr('disabled', 'disabled');
    }
  }

  $('#add-Payment').on('click', addPayment);
  $('body').on('click', '.remove-Payment', removePayment);


}());
