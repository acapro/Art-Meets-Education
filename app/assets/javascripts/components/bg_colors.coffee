bg_color_change = ->
  colors = ['rgb(30, 109, 118)',
            'rgb(71, 137, 102)',
            'rgb(189, 73, 50)',
            'rgb(255, 211, 78)']

  current_color = $('#pop-out').css('background-color')
  colors.splice(colors.indexOf(current_color), 1)
  new_color = colors[Math.floor(Math.random() * colors.length)]
  $('#pop-out').css('background-color', new_color)
  $('#bg-color').css('background-color', new_color)
  $('#header-container').css('background-color', new_color)

document.addEventListener 'turbolinks:visit', ->
  window.waitForFinalEvent (->
    bg_color_change()
  ), 200, 'bg_color_change'
