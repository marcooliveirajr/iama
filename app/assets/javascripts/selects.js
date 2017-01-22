  $(document).ready(function() { 
  	$("#map_health_terminology_id").select2({
      placeholder: "Selecione um Procedimento",
      allowClear: true
    });
  	$("#map_tuss2").select2({
      placeholder: "Selecione um segundo Procedimento",
      allowClear: true
    }); 
  	$("#map_tuss3").select2({
      placeholder: "Selecione um terceiro Procedimento",
      allowClear: true
    });
  	$("#map_tuss4").select2({
      placeholder: "Selecione um quarto Procedimento",
      allowClear: true
    });
  	$("#map_tuss5").select2({
      placeholder: "Selecione um quinto Procedimento",
      allowClear: true
    });
  	$("#map_anesthetist_id").select2({
      placeholder: "Selecione um Anestesista",
      allowClear: true
    });
  	$("#map_anesthetist1").select2({
      placeholder: "Selecione um segundo Anestesista",
      allowClear: true
    });
  	$("#map_anesthetist2").select2({
      placeholder: "Selecione um terceiro Anestesista",
      allowClear: true
    });
  	$("#map_surgeon_id").select2({
      placeholder: "Selecione um Cirurgião",
      allowClear: true
    });
  	$("#map_surgeon1").select2({
      placeholder: "Selecione um segundo Cirurgião",
      allowClear: true
    });
  	$("#map_surgeon2").select2({
      placeholder: "Selecione um terceiro Cirurgião",
      allowClear: true
    });
  	$("#map_health_insurance_id").select2({
      placeholder: "Selecione um Convênio Médico",
      allowClear: true
    });
  	$("#map_hospital_id").select2({
      placeholder: "Selecione um Hospital",
      allowClear: true
    });
  	$("#map_patient_id").select2({
      placeholder: "Selecione um Paciente",
      allowClear: true
    });
    $("#map_health_plan_id").select2({
      placeholder: "Selecione um Plano",
      allowClear: true
    });
    $("#input_category_id").select2({
      placeholder: "Selecione uma Categoria",
      allowClear: true
    });
    $("#output_category_id").select2({
      placeholder: "Selecione uma Categoria",
      allowClear: true
    });
    $("#cash_movement_input_id").select2({
      placeholder: "Selecione uma Entrada",
      allowClear: true
    });
    $("#cash_movement_output_id").select2({
      placeholder: "Selecione uma Saída",
      allowClear: true
    });

  });


// clinic.selects = (function() {
//   'use script';

//   function init() {
//     $(".js-example-basic-single").select2();
//     selectOptions();
//   }

//   function selectOptions() {
//     $(".select2").select2({
//       //minimumInputLength: 1
//       allowClear: true
//     });
//   }

//   return {
//     init: init
//   }
// }());

// $(document).ready(clinic.selects.init);
