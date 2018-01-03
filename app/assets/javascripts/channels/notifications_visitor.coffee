App.notifications_visitor = App.cable.subscriptions.create "NotificationsVisitorChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#popup_visitor').html data["counter"]
    $('#popup_visitor').find("#number").show()
    console.log data
    # Called when there's incoming data on the websocket for this channel
  reset: (visitor_id) ->
  	@perform 'reset_counter_unread' , id: visitor_id

$ ->
  $(document).on 'click', '#floatbutton', (event) ->
    $div = $(this)
    $div.find("#number").hide()
   	App.notifications_visitor.reset(309)
    return
  return

    