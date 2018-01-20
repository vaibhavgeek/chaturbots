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
    popup_show "A visitor has left a message: " + data["message"].slice(0,10) , data["counter"]
    console.log data
    # Called when there's incoming data on the websocket for this channel

popup_show = (content , uid) -> 
  addDialogue = (opts) ->
    $dialogue = $('.dialogue.template').clone(true)
    $dialogue.find('.message').text opts.text
    $dialogue.attr('data-id', uid).removeClass('template').addClass('fresh').prependTo '.dialogue-controller'
    return

  closeDialogue = (id) ->
    $dialogue = $('*[data-id="' + id + '"]')
    $dialogue.removeClass('fresh').addClass 'stale'
    $('.stale').bind 'animationend webkitAnimationEnd', (e) ->
      $dialogue.remove()
      return
    return

  
  $('.close').on 'click', (e) ->
    id = $(e.target).closest('.dialogue').attr('data-id')
    console.log id
    closeDialogue id
    return
  addDialogue text: content





