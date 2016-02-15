  $(function () {
    $('#datetimepicker').datetimepicker({
      //defaultDate: "<%= @map.time_surgery %>",
      format: "YYYY-MM-DD hh:mm a Z",
      //language: 'pt-br',
      useCurrent: false
    });
  });
