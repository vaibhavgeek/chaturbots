App.chatbot = App.cable.subscriptions.create "ChatbotChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#messages").append data['message']
    # Called when there's incoming data on the websocket for this channel

  speak: (data, responder) ->
    @perform 'speak' , message: data , responder: responder 

$(document).on 'keyup' , '[data-behavior=chatbot_call]' , (event) ->
  if event.keyCode is 13
    substring = "index"
    string = window.location.href 
    if string.indexOf(substring) != -1
      App.chatbot.speak event.target.value , responder: "user"
    else 
      App.chatbot.speak event.target.value , responder: "agent"     
    event.target.value = ''
    event.preventDefault()