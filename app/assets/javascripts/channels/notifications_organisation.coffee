string = window.location.href 
org_string = "/"
if string.indexOf(org_string) != -1
  orga_id = string.split(org_string)[4]
  home = string.split(org_string)[5]	


App.notifications_organisation = App.cable.subscriptions.create { channel: "NotificationsOrganisationChannel", organisation: orga_id , home: home } , 
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    if $("#messages" + data["auth"]).length == 0
      $("#notif" + data["auth"]).show()
      $("#notif" + data["auth"]).html data["counter"] 
    console.log data
    # popup_show data["counter"] , data["message"]
    # Called when there's incoming data on the websocket for this channel

popup_show = (uid , linker) -> 
  addDialogue = (opts) ->
    $dialogue = $('.dialogue.template').clone(true)
    $dialogue.find('.message').html linker
     
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
  addDialogue text: "content"


$ -> 
  # popup_show "asd" , "<a href='#' class='no-link'> hello </a>"

