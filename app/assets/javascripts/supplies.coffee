# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ajax:success', 'a[data-remote]', (e, data, status, xhr) ->
  $(this).remove()

$(document).on 'ajax:success', 'input[data-remote]', (e, data, status, xhr) ->
  console.log("WORKED")
