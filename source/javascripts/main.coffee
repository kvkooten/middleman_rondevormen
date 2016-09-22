$(document).ready ->
  
  # CONTENT SECTIONS
  odd = $('.content-section:nth-child(odd)')
  even = $('.content-section:nth-child(even)')
  
  $(odd).addClass 'odd'
  $(even).addClass 'even'
  
  
  # SCROLL TO ANCHOR
  $('a[href^="#"]').on 'click', (e) ->
    
    e.preventDefault()
    target = @hash
    $target = $(target)
    
    $('html, body').stop().animate { 'scrollTop': $target.offset().top - 100 }, 1000, 'easeInOutExpo', ->
      window.location.hash = target
      

  # ADD CLASSES ON OFFSET
  $(window).scroll ->
    scroll = $(window).scrollTop()
    offset = $('#offset').offset().top - 50
    navbar = $('.nav-full, .nav-full .logo, .nav-full .logo img, .nav-full .links a, .top-menu, .mid-menu, .bottom-menu')
    if $(this).scrollTop() > offset
      $(navbar).addClass 'scrolled'
    else
      $(navbar).removeClass 'scrolled'
    return
  
  # TOGGLERS
  $('.toggle-logo-nav').click ->
    $('.reveal-logo-nav').slideToggle 'easeInOut'
    
  $('.reveal-logo-nav a').click ->
    $('.reveal-logo-nav').slideToggle 'easeInOut'
    
  $('.clicker1').click ->
    $('.reveal1').slideToggle 'easeInOut'
    if $(this).text() == 'Sluiten'
      $(this).text 'Lees verder'
    else
      $(this).addClass 'hide'
    return
  
  $('.clicker2').click ->
    $('.reveal2').slideToggle 'easeInOut'
    if $(this).text() == 'Sluiten'
      $(this).text 'Lees verder'
    else
      $(this).addClass 'hide'
    return
  
  $('.clicker3').click ->
    $('.reveal3').slideToggle 'easeInOut'
    if $(this).text() == 'Sluiten'
      $(this).text 'Lees verder'
    else
      $(this).addClass 'hide'
    return