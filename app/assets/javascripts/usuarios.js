$(document).ready(function() {
	$('#usuarios').dataTable({
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

	} );