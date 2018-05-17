$(document).ready(function(){

	$('body').on('click', '.image-box', function(e) {
		e.preventDefault();
		e.stopPropagation();
		var image_area =  $(this).parent('.image-box-area')
		var input = image_area.find('input.file-input')
		input.click()
	});

	$('body').on('change', 'input.file-input', function(e) {
		showImage(this);
	});

});

var showImage = function(input) {

	if (input.files && input.files[0]) {

	  var reader = new FileReader();
	  var image_area = $(input).parent('.image-box-area');
	  var image_tag = image_area.find('#uploaded')

	  reader.onload = function(e) {
	    image_tag.attr('src', e.target.result);
	    image_tag.show();
	  }

	  reader.readAsDataURL(input.files[0]);

  }

}
