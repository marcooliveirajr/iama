var address;
(function(address){

  function search(configs, value) { //alert ('tete')
    if(value === undefined || value == null)
      return;

    var postal_code = value.replace("-","");

    if(postal_code.length >= 8){
      $.ajax({
        url: "/address/search.json",
        data: { "postal_code": postal_code },
        cache: false,
        beforeSend: function(data) {
          show_loading();
        }
      }).success(function(data){

        if (!jQuery.isEmptyObject(data)){
          $.each( configs.fields, function( key, field ) {
            $(field).val(data[key])
          });
        }

        clear_loading();
      }).error(function(){
        clear_loading();
      });
    }
  }
  address.search = search;

  function show_loading(){
    $('.ls-mask-cep').after('<span class="spinner loader"></span>');
  }

  function clear_loading(){
    $('.spinner').remove();
  }

})(address || (address = {}));
