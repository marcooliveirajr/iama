var clinic = clinic || {}

clinic.date_on_duty = (function() {
    'use script';

    function init() {
          $('#search_type').on('change', toggleSearchElement);
              $('#search_type').trigger('change')
    }

    function toggleSearchElement(){
          var value = $(this).val();
              var text = $('#text_order_search');
                  var date = $('#data_order_search');

                  if (value == 'on_duty_date') {
                          enableElement(date, true)
                          enableElement(text, false)
                  } else {
                          enableElement(date, false)
                          enableElement(text, true)
                  }
    }

    function enableElement(element, value) {
          var clazz = 'ls-display-none';

          if(value) {
                  element.removeClass(clazz);
                  element.find('input').attr('disabled', false);
          } else {
                  element.addClass(clazz);
                  element.find('input').attr('disabled', true);
          }
    }
    return {
          init: init
    }

}());
