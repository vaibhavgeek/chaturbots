#jQuery to collapse the navbar on scroll

$(window).scroll ->
  if $('.navbar').offset().top > 50
    $('.navbar-fixed-top').addClass 'top-nav-collapse'
    console.log 'try'
  else
    console.log 'try again'
    $('.navbar-fixed-top').removeClass 'top-nav-collapse'
  return

$ ->
  $(document).on 'click', '.page-scroll', (event) ->
    $anchor = $(this)
    $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo'
    event.preventDefault()
    return
  return

