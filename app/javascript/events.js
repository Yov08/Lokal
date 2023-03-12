// $(document).on('click', '.like-icon', function(event) {
//   event.preventDefault();

//   var eventId = $(this).closest('.like-btn').data('event-id');
//   var url = '/events/' + eventId + '/likes';

//   if ($(this).hasClass('liked')) {
//     $.ajax({
//       url: url,
//       type: 'DELETE',
//       success: function(data) {
//         $('.like-btn[data-event-id="' + eventId + '"]').find('.like-icon').removeClass('liked');
//       },
//       error: function(jqXHR, textStatus, errorThrown) {
//         console.log(errorThrown);
//       }
//     });
//   } else {
//     $.ajax({
//       url: url,
//       type: 'POST',
//       success: function(data) {
//         $('.like-btn[data-event-id="' + eventId + '"]').find('.like-icon').addClass('liked');
//       },
//       error: function(jqXHR, textStatus, errorThrown) {
//         console.log(errorThrown);
//       }
//     });
//   }
// });

// $(document).ready(function() {
//   $('.like-btn').each(function() {
//     var eventId = $(this).data('event-id');
//     var url = '/events/' + eventId + '/likes';

//     $.ajax({
//       url: url,
//       type: 'GET',
//       success: function(data) {
//         if (data.liked) {
//           $('.like-btn[data-event-id="' + eventId + '"]').find('.like-icon').addClass('liked');
//         }
//       },
//       error: function(jqXHR, textStatus, errorThrown) {
//         console.log(errorThrown);
//       }
//     });
//   });
// });

