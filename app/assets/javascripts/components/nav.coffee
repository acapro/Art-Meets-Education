nav_size = ->
  window.addEventListener 'scroll', (e) ->
    distanceY = window.pageYOffset or document.documentElement.scrollTop
    shrinkOn = 150
    $router = $('#header-container')
    if distanceY > shrinkOn
      unless $router.hasClass('smaller')
        $router.addClass('smaller')
    else
      if $router.hasClass('smaller')
        $router.removeClass('smaller')
  return

$('header').ready ->
  $nav = $('header > nav')
  nav_size()
  $('header a').on 'click', ->
    $nav.find("*").removeClass('active')
    $(@).parent().addClass('active')
    $('#header-container nav').removeClass('show')
    $('#mobile-trigger').removeClass('active')
    location = $(@).attr('href')
    Turbolinks.visit(location)
    return
  $('#mobile-trigger').on 'click touchstart', ->
    $('#mobile-trigger').toggleClass('active')
    $('#header-container nav').toggleClass('show')
    return false
