(function() {
  function clearAnesthetist1() {
      $("#map_anesthetist1").val('').change();
  }
  $('#clear_anesthetist1').on('click', clearAnesthetist1);

  function clearAnesthetist2() {
      $("#map_anesthetist2").val('').change();
  }
  $('#clear_anesthetist2').on('click', clearAnesthetist2);

  function clearSurgeon1() {
      $("#map_surgeon1").val('').change();
  }
  $('#clear_surgeon1').on('click', clearSurgeon1);

  function clearSurgeon2() {
      $("#map_surgeon2").val('').change();
  }
  $('#clear_surgeon2').on('click', clearSurgeon2);

  function clearHealth() {
      $("#map_health_insurance_id").val('').change();
  }
  $('#clear_health').on('click', clearHealth);

  function clearHealthplan() {
      $("#map_health_plan_id").val('').change();
  }
  $('#clear_health_plan').on('click', clearHealthplan);
  
  function clearHospital() {
      $("#map_hospital_id").val('').change();
  }
  $('#clear_hospital').on('click', clearHospital);
  
  function clearTuss() {
      $("#map_health_terminology_id").val('').change();
      $(".tuss").text('');
      $(".measure").text('');
  }
  $('#clear_tuss').on('click', clearTuss);

  function clearTuss2() {
      $("#map_tuss2").val('').change();
      $(".tuss2").text('');
      $(".measure2").text('');
  }
  $('#clear_tuss2').on('click', clearTuss2);
  
  function clearTuss3() {
      $("#map_tuss3").val('').change();
      $(".tuss3").text('');
      $(".measure3").text('');
  }
  $('#clear_tuss3').on('click', clearTuss3);
  
  function clearTuss4() {
      $("#map_tuss4").val('').change();
      $(".tuss4").text('');
      $(".measure4").text('');
  }
  $('#clear_tuss4').on('click', clearTuss4);
  
  function clearTuss5() {
      $("#map_tuss5").val('').change();
      $(".tuss5").text('');
      $(".measure5").text('');
  }
  $('#clear_tuss5').on('click', clearTuss5);
  
}());
