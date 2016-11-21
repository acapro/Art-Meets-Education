$('header').ready ->
  $nav = $('header > nav')
  $('header').find('a').click ->
    console.log 'clicked'
    $nav.find("*").removeClass('active')
    console.log this
    $(this).parent().addClass('active')
