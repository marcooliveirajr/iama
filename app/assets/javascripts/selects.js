  $(document).ready(function() { 
  	$("#map_health_terminology_id").select2({
      allowClear: true,
      placeholder: "Selecione um Procedimento"
    });
  	$("#map_tuss2").select2({
      allowClear: true,
      placeholder: "Selecione um segundo Procedimento"
    }); 
  	$("#map_tuss3").select2({
      allowClear: true,
      placeholder: "Selecione um terceiro Procedimento"
    });
  	$("#map_tuss4").select2({
      allowClear: true,
      placeholder: "Selecione um quarto Procedimento"
    });
  	$("#map_tuss5").select2({
      allowClear: true,
      placeholder: "Selecione um quinto Procedimento"
    });
  	$("#map_anesthetist_id").select2({
      allowClear: true,
      placeholder: "Selecione um Anestesista"
    });
  	$("#map_anesthetist1").select2({
      allowClear: true,
      placeholder: "Selecione um segundo Anestesista"
    });
  	$("#map_anesthetist2").select2({
      allowClear: true,
      placeholder: "Selecione um terceiro Anestesista"
    });
  	$("#map_surgeon_id").select2({
      allowClear: true,
      placeholder: "Selecione um Cirurgião"
    });
  	$("#map_surgeon1").select2({
      allowClear: true,
      placeholder: "Selecione um segundo Cirurgião"
    });
  	$("#map_surgeon2").select2({
      allowClear: true,
      placeholder: "Selecione um terceiro Cirurgião"
    });
  	$("#map_health_insurance_id").select2({
      allowClear: true,
      placeholder: "Selecione um Convênio Médico"
    });
  	$("#map_hospital_id").select2({
      allowClear: true,
      placeholder: "Selecione um Hospital"
    });
  	$("#map_patient_id").select2({
      allowClear: true,
      placeholder: "Selecione um Paciente"
    });
    $("#map_health_plan_id").select2({
      allowClear: true,
      placeholder: "Selecione um Plano"
    });
    $("#input_category_id").select2({
      allowClear: true,
      placeholder: "Selecione uma Categoria"
    });
    $("#output_category_id").select2({
      allowClear: true,
      placeholder: "Selecione uma Categoria"
    });
    $("#cash_movement_input_id").select2({
      allowClear: true,
      placeholder: "Selecione uma Entrada"
    });
    $("#cash_movement_output_id").select2({
      allowClear: true,
      placeholder: "Selecione uma Saída"
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
