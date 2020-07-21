import consumer from "./consumer"

const chatChannel = consumer.subscriptions.create("UserideaChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    return $('#ideas').append(data['idea']);
  },

  speak: function(idea) {
    return this.perform('speak', {
      idea: idea
    });
  }
});

$(document).on('keypress', '[data-behavior~=useridea_speaker]', function(event) {
  if (event.keyCode === 13) {
    chatChannel.speak(event.target.value);
    event.target.value = '';
    return event.preventDefault();
  }
});
