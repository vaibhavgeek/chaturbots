string = window.location.href 
substring = "index"
if string.indexOf(substring) != -1
  auth_token = string.split("/").pop()
else 
  auth_token = "admin" # this is main admin

org_string = "/"
if string.indexOf(org_string) != -1
  orga_id = string.split(org_string)[4]
else
  orga_id = "not_admin" 

App.notifications_visitor = App.cable.subscriptions.create { channel: "NotificationsVisitorChannel", auth_t: auth_token } , 
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    #$('#popup_visitor').html data["counter"]
    #$('#popup_visitor').find("#number").show()
    console.log data
    console.log "this is from notifications visitor, bitch"
    # Called when there's incoming data on the websocket for this channel
  reset: (visitor_id) ->
  	@perform 'reset_counter_unread' , id: visitor_id

$ ->
 $(document).on 'click', '#floatbutton', (event) ->
   $div = $(this).prev()
   $div.hide()
   App.notifications_visitor.reset(309)
   return
 return

    