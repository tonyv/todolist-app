$(document).ready(function() {
		$('.delete_task').bind('ajax:success', function() {
		$(this).fadeOut(800);
	});
});
