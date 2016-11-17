set_pop_out_scroll = ->
  pop_out_controller = new ScrollMagic.Controller()
  window.pop_out_scene = new (ScrollMagic.Scene)(
    offset: 300).setClassToggle("#pop-out", "closed")
  pop_out_controller.addScene(pop_out_scene)

$('#pop-out').ready ->
  set_pop_out_scroll()

document.addEventListener 'turbolinks:load', ->
  window.waitForFinalEvent (->
      if $('section.splash')[0]
        $('#pop-out').removeClass('closed')
        unless window.pop_out_scene.enabled()
          set_pop_out_scroll()
      else
        $('#pop-out').addClass('closed')
        window.pop_out_scene.enabled(false)
    ), 200, 'pop_out_trigger'
