string = window.location.href 
substring = "/bot/"
home = "/organisations/"

if string.indexOf(substring) != -1
  auth_token = string.split("/").pop()
else if string.indexOf(home) != -1
  auth_token = "admin"
else
  auth_token = "not_admin"


org_string = "/"
if string.indexOf(org_string) != -1
  orga_id = string.split(org_string)[4]
if not orga_id?
  orga_id = "1" 

if auth_token == "admin"
	App.user_online = App.cable.subscriptions.create { channel: "UserOnlineChannel" , organisation_id: orga_id , auth_token: auth_token },
		connected: ->
    	# Called when the subscription is ready for use on the server

		disconnected: ->
    	# Called when the subscription has been terminated by the server

		received: (data) ->
    	# Called when there's incoming data on the websocket for this channel
