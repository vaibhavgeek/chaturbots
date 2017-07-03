App.chatbot = App.cable.subscriptions.create "ChatbotChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#messages").append data['message']
    # Called when there's incoming data on the websocket for this channel

  speak: (data) ->
    @perform 'speak' , message: data

$(document).on 'keyup' , '[data-behavior=chatbot_call]' , (event) ->
  if event.keyCode is 13
    App.chatbot.speak event.target.value
    event.target.value = ''
    event.preventDefault()