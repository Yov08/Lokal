$(document).on('turbolinks:load', function() {
  $('.like-button').on('click', function(event) {
    event.preventDefault();
    var $button = $(this);
    var url = $button.attr('href');
    var method = $button.find('input[name="_method"]').val() || $button.data('method') || 'get';
    $.ajax({
      url: url,
      method: method,
      dataType: 'json'
    }).done(function(data) {
      if (data.liked) {
        $button.addClass('liked');
        $button.find('i').removeClass('far').addClass('fas');
      } else {
        $button.removeClass('liked');
        $button.find('i').removeClass('fas').addClass('far');
      }
    });
  });
});
