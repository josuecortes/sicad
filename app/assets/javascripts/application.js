// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.maskedinput.min
//= require dataTables/jquery.dataTables
//= require pessoas
//= require entidades
//= require usuarios
//= require jquery-ui
//= require jquery-ui/autocomplete
//= require autocomplete-rails
//= require bootstrap
// require excanvas.min
// require flot-data
// require jquery.flot
// require jquery.flot.pie
// require jquery.flot.resize
// require jquery.flot.tooltip.min
// require morris-data
// require morris.min
// require morris
// require raphael.min 


jQuery(function($){
   $(".data").mask("99/99/9999");
   $(".telefone").mask("(99) 99999-9999");
   $(".cpf").mask("999.999.999-99");
   $(".placa").mask("aaa-9999");
   $(".ssn").mask("999-99-9999");
   $(".hora").mask("99:99");
});

$(".placa").css("text-transform", "uppercase");

$('#tabela').dataTable({
  "language": {
    "sProcessing":    "Processando...",
    "sLengthMenu":    "Mostrar _MENU_ Registros",
    "sZeroRecords":   "Nenhum registro encontrado", 
    "sEmptyTable":    "Nenhum dado disponivel nesta tabela",
    "sInfo":          "Mostrando registros de _START_ ate _END_ de um total de _TOTAL_ registros",
    "sInfoEmpty":     "Mostrando registros de 0 a 0 de um total de 0 registros",
    "sInfoFiltered":  "(filtrado de um total de _MAX_ registros)",
    "sInfoPostFix":   "",
    "sSearch":        "Buscar:",
    "sUrl":           "",
    "sInfoThousands":  ",",
    "sLoadingRecords": "Carregando...",
    "oPaginate": {
      "sFirst":    "Primeiro",
      "sLast":    "Último",
      "sNext":    "Proximo",
      "sPrevious": "Anterior"
    },
    "oAria": {
      "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
      "sSortDescending": ": Activar para ordenar la columna de manera descendente"
    }
  }
});