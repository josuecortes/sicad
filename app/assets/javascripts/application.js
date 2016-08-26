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
//= require excanvas.min
//= require flot-data
//= require jquery.flot
//= require jquery.flot.pie
//= require jquery.flot.resize
//= require jquery.flot.tooltip.min
//= require morris-data
//= require morris.min
//= require morris
//= require raphael.min 

$(document).ready(function(){
  $('.date').mask('11/11/1111');
  $('.time').mask('00:00:00');
  $('.date_time').mask('00/00/0000 00:00:00');
  $('.cep').mask('00000-000');
  $('.phone').mask('0000-0000');
  $('.phone_with_ddd').mask('(00) 0000-0000');
  $('.phone_us').mask('(000) 000-0000');
  $('.mixed').mask('AAA 000-S0S');
  $('.cpf').mask('000.000.000-00', {reverse: true});
  $('.money').mask('000.000.000.000.000,00', {reverse: true});
});