document.addEventListener 'turbolinks:load', ->
  if $('#slider')[0]
    $('#slider').flickity
      cellSelector: '.cell'
      adaptiveHeight: true
      imagesLoaded: true
      wrapAround: true
      prevNextButtons: false
      pageDots: false
      autoPlay: 5000
      pauseAutoPlayOnHover: false
