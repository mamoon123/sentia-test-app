$(function () {
	$('.datepicker').datepicker({
        format: 'dd-mm-yyyy'
    })
	.on(',datepicker', function(ev){
	  $('#dt5').datepicker('hide');
	});
});

$(function () {
	$("#user-data").dataTable();
 });