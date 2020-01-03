$(document).ready(function(){

  ///////////////////////////// SHOW LIST EQUIPMENTS INTO SELECT//////////////////////
  $(".charge_equipments").select2({
    ajax: {
      url: "/add_equipment_point",
      dataType: "json",
      type: "GET",
      delay: 250,
      data: function (params) {
        return {
          name: params.term
        };
      },
      processResults: function (data, params) {
  
        return {
          results: $.map(data, function(value, index){
            return {id: value.id, text:value.name};
          })
        };
      },
      
      cache: true,
      
    },
    placeholder: 'Seleccionar Equipo',
    width: 'auto',
    allowClear: true,
    theme:"bootstrap",
    minimumInputLength: 2,
  });
  ////////////////////////////////// END ////////////////////////////////////////////
  ///////////////////////////// SHOW LIST POINTS INTO SELECT//////////////////////
  $(".charge_pv").select2({
    ajax: {
      url: "/add_pv",
      dataType: "json",
      type: "GET",
      delay: 250,
      data: function (params) {
        return {
          name: params.term
        };
      },
      processResults: function (data, params) {
  
        return {
          results: $.map(data, function(value, index){
            return {id: value.id, text:value.name};
          })
        };
      },
      
      cache: true,
      
    },
    placeholder: 'Seleccionar PV',
    width: 'auto',
    allowClear: true,
    theme:"bootstrap",
    minimumInputLength: 2,
  });
 ///////////////////////////////////// END ///////////////////////////////////////////////

 
});  
