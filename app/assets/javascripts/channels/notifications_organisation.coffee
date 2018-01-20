string = window.location.href 
org_string = "/"
if string.indexOf(org_string) != -1
  orga_id = string.split(org_string)[4]
else
  orga_id = "not_admin"	


App.notifications_organisation = App.cable.subscriptions.create { channel: "NotificationsOrganisationChannel", organisation: orga_id } , 
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	console.log data
  	console.log "this is from organisation notification, bitch"
    # Called when there's incoming data on the websocket for this channel
