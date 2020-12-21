import consumer from "./consumer"

$(document).on('turbolinks:load', function () {
  consumer.subscriptions
    .create({channel: "DiscussionsChannel", 
             groupe_id: $('#chat-panel').attr('data-subchannel') }, {
        connected() {
          // Called when the subscription is ready for use on the server
          // console.log("connected !")
        },

        disconnected() {
          // Called when the subscription has been terminated by the server
        },

        received(data) {
          // Called when there's incoming data on the websocket for this channel
          const chatElement = document.querySelector("#discussion-list")
          console.log(chatElement)

          if (chatElement) {
            chatElement.innerHTML = data.html
          }

        }
  });
})