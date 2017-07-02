App.chatbot = App.cable.subscriptions.create "ChatbotChannel",
  connected: ->
  	alert "connected"
    # Called when the subscription is ready for use on the server

  disconnected: ->
  	alert "disconnected"
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel

  speak: ->
    @perform 'speak'
