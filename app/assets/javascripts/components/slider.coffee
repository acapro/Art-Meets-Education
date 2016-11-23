document.addEventListener 'turbolinks:load', ->
  if $('#slider')[0]
    $('#slider').flickity
      cellSelector: '.cell'
      imagesLoaded: true
      wrapAround: true
      prevNextButtons: false
      pageDots: false
      autoPlay: true
      pauseAutoPlayOnHover: false
