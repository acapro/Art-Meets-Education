set_pop_out_scroll = ->
  pop_out_controller = new ScrollMagic.Controller()
  window.pop_out_scene = new (ScrollMagic.Scene)(
    offset: 300).setClassToggle("#pop-out", "closed")
  pop_out_controller.addScene(pop_out_scene)

pop_out_click_handler = ->
  $pop_out_link = $('#pop-out-link')
  $pop_out_link.mouseenter ->
    $(@).find('#pop-out').removeClass('closed')
  $pop_out_link.mouseleave ->
    unless $(@).hasClass('closed')
      $(@).find('#pop-out').addClass('closed')
  $pop_out_link.on 'click touchstart', (e) ->
    e.preventDefault()
    location = $(@).attr('href')
    if $(@).find('#pop-out').hasClass('closed')
      $(@).find('#pop-out').removeClass('closed')
    else
      Turbolinks.visit(location)
      $(@).find('#pop-out').addClass('closed')
    return

$('#pop-out').ready ->
  set_pop_out_scroll()

document.addEventListener 'turbolinks:load', ->
  pop_out_click_handler()
  window.waitForFinalEvent (->
    if $('section.splash')[0] && $(window).width() > 992
      $('#pop-out').removeClass('closed')
      unless window.pop_out_scene.enabled()
        set_pop_out_scroll()
    else
      $('#pop-out').addClass('closed')
      window.pop_out_scene.enabled(false)
  ), 200, 'pop_out_trigger'
