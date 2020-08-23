// // Use an adjacent `previewsContainer` to
// // display the photo thumbnails, their upload
// // progress, and success or failure state
//
// uploader = new Shubox("#shubox--upload-target", {
//   transformName: 'multi-upload',
//   previewsContainer: '#shubox--upload-preview',
//   addedfile: function(){ console.log('added') },
//   success: function(){ console.log('file uploaded') },
//   queuecomplete: function(){ console.log('done') }
// });
$(function()
{
    $(document).on('click', '.btn-add', function(e)
    {
        e.preventDefault();

        var controlForm = $('.controls:first'),
            currentEntry = $(this).parents('.entry:first'),
            newEntry = $(currentEntry.clone()).appendTo(controlForm);

        newEntry.find('input').val('');
        controlForm.find('.entry:not(:last) .btn-add')
            .removeClass('btn-add').addClass('btn-remove')
            .removeClass('btn-success').addClass('btn-danger')
            .html('<span class="glyphicon glyphicon-minus"></span>');
    }).on('click', '.btn-remove', function(e)
    {
      $(this).parents('.entry:first').remove();

		e.preventDefault();
		return false;
	});
});
