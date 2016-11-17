$('.pop-out').ready ->
  pop_out_controller = new ScrollMagic.Controller()
  pop_out_scene = new (ScrollMagic.Scene)(
    offset: 300).setClassToggle(".pop-out", "closed")
  pop_out_controller.addScene(pop_out_scene)

document.addEventListener 'turbolinks:load', ->
  if $('section.splash')[0]
    pop_out_scene.enabled(true)
  else
    pop_out_scene.enabled(false)
    $('pop-out').addClass('closed')
