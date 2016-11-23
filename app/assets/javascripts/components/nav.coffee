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
  $('header').find('a').click ->
    console.log 'clicked'
    $nav.find("*").removeClass('active')
    console.log this
    $(this).parent().addClass('active')
