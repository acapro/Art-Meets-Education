colors = ['rgb(30, 109, 118)',
          'rgb(71, 137, 102)',
          'rgb(189, 73, 50)',
          'rgb(255, 211, 78)']

change_color_elements = (color) ->
  $('#pop-out').css('background-color', color)
  $('body').css('background-color', color)
  $('#header-container').css('background-color', color)
  $('#header-container nav').css('background-color', color)
  $('#footer').css('background-color', color)

bg_color_change = ->
  current_color = $('#pop-out').css('background-color')
  colors.splice(colors.indexOf(current_color), 1)
  new_color = colors[Math.floor(Math.random() * colors.length)]
  change_color_elements(new_color)

bg_set_random_color = ->
  window.random_color = colors[Math.floor(Math.random() * colors.length)]

# document.addEventListener 'turbolinks:visit', ->
#   window.waitForFinalEvent (->
#     bg_color_change()
#   ), 200, 'bg_color_change'

$('header').ready ->
  bg_set_random_color()

document.addEventListener 'turbolinks:load', ->
  change_color_elements(window.random_color)
