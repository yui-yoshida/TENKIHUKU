# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#calendar').fullCalendar dayClick: ->
      # alert('a day has been clicked!')
      str = moment(data).format( 'YYYY/MM/DD' )
      console.log(str)
      alert(str)
    return
  return
# $(document).ready ->
#   $('#calendar').fullCalendar
#     events: '/events.json'
#     selectable: true
#     selectHelper: true
#     select: (data) ->
#       str = moment(data).format('YYYY/MM/DD')
#       console.log str
#       return
#   return
