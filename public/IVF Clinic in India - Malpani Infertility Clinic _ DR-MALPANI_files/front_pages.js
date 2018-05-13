tinymce.init({
	browser_spellcheck: true,
	branding: false,
	selector: 'textarea#conversation_replay',
	/*toolbar1: 'undo redo | styleselect | bold italic | fontsizeselect | linkimage | alignleft | aligncenter | alignright',
	toolbar2: 'imageupload | image',*/
	/*new*/
	plugins: "textcolor colorpicker",
	toolbar1 : 'save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect | formatselect | fontselect | fontsizeselect' ,
	toolbar2 : 'cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor',  
	toolbar3 : 'linkimage | alignleft | aligncenter | alignright | imageupload | image',
	image_dimensions: true,
	setup: function(editor) {
		initImageUpload(editor);
	}
});

function initImageUpload(editor) {
	// create input and insert in the DOM
	var inp = $('<input id="tinymce-uploader" type="file" name="pic" accept="image/*" style="display:none">');
	$(editor.getElement()).parent().append(inp);
	// add the image upload button to the editor toolbar
	editor.addButton('imageupload', {
		text: '',
		icon: 'image',
		onclick: function(e) { // when toolbar button is clicked, open file select modal
			inp.trigger('click');
		}
	});

	// when a file is selected, upload it to the server
	inp.on("change", function(e){
		uploadFile($(this), editor);
	});
}

function uploadFile(inp, editor) {
	var input = inp.get(0);
	var data = new FormData();
	data.append('image', input.files[0]);
	  
	var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
	data.append('_token',CSRF_TOKEN);
	data.append('upload_path','content');

	$.ajax({
		url: routeImageUpload,
		type: 'POST',
		data: data,	    
		processData: false, // Don't process the files
		contentType: false, // Set content type to false as $ will tell the server its a query string request
		success: function(data, textStatus, jqXHR) {
			data = $.parseJSON(data);
			console.log(data)
			editor.insertContent('<img class="content-img" src="' + data.url + '"/>');
		},
		error: function(jqXHR, textStatus, errorThrown) {
			if(jqXHR.responseText) {
				errors = JSON.parse(jqXHR.responseText).errors
				alert('Error uploading image: ' + errors.join(", ") + '. Make sure the file is an image and has extension jpg/jpeg/png.');
			}
		}
	});
}