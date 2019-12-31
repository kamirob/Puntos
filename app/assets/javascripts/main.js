$(document).ready(function(){
  
  $('#sidebarCollapse').on('click', function () {
    $('#sidebar').toggleClass('active');
    $(this).toggleClass('active');
  });

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

  $('#myFormSubmit').click
    $('#myModal').modal('hide');

 
});  
