var Handlers = {
  onNewCommentSuccess: function(e, response) {
    // e.target is our form
    e.target.reset()
    // response.html is our rendered partial
    $('.comments').append(response.html);
  }

};

$(document).ready(function() {

  // need to listen for ajax:success on the new comment form
  $('form#new_comment').on('ajax:success', Handlers.onNewCommentSuccess);

});
