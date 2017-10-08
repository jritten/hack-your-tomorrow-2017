App.chat = App.cable.subscriptions.create("ChatChannel", {

  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },
  received: function(data) {
    var now = new Date();
    var hours = now.getHours();
    var minutes = now.getMinutes();
    $('#chat-form')[0].reset();
    if (minutes < 10) {
      minutes = "0" + minutes
    }
    if ($("#messages").children().length % 2 == 0) {
      $('#messages').append('<div class="card message"><div class="card-block"><span class="card-title">John</span><span class="sent-time">' + hours + ':' + minutes + '</span><p class="card-text">' + data['message'] + '</p></div></div>');
      $("#messages").scrollTop($("#messages")[0].scrollHeight);
    } else {
      $('#messages').append('<div class="card message"><div class="card-block"><span class="card-title">Kathryn</span><span class="sent-time">' + hours + ':' + minutes + '</span><p class="card-text">' + data['message'] + '</p></div></div>');
      $("#messages").scrollTop($("#messages")[0].scrollHeight);
    }
  },

  speak: function(message) {
    return this.perform('speak', { message: message });
  }
});
