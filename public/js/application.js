$(document).ready(function() {
	$('#input').on('submit', function(question) {
		question.preventDefault();
		var data = $(this).serialize();
		var url = $(this).attr("action");
		$.post(url, data, function(response){
			$("h1").html(response);
		});
	});
});
