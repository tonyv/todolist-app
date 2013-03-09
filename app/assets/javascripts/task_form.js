function remove_fields(link) {
	// hide the link
	$(link).prev('input[type=hidden]').val('1');
	
	// hide the field
	$(link).parent('.field').hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).prev().after(content.replace(regexp, new_id));
}

