$(document).ready(function(){
    (function ShowCam(){
		Webcam.set({
			width: 400,
			height: 400,
			image_format: 'jpeg',
			jpeg_quality: 100
		});
		Webcam.attach('#my_camera');
	})();


	function take_snapshot() {
	    Webcam.snap(function(data_uri) {
	    	$('#my_photo').find('img').remove();
	    	$('#my_photo').find('.photo_wrapper').append('<img id="base64image" src="'+data_uri+'"/>');
	    	$('#photo_viewer').show();
	    	$('#photo_uploadar').hide();
		});
	}

	function retake_snapshot() {
		$('#photo_viewer').hide();
	    $('#photo_uploadar').show();
	}

	$('#take_snap').on('click', take_snapshot);
	$('#retake_snap').on('click', retake_snapshot);
}); 