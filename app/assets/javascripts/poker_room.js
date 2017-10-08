// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  $('#chat-form').on('submit', function(event) {
      event.preventDefault();
      App.chat.speak(event.target.comment.value);
      event.target.value = '';
  });
});
