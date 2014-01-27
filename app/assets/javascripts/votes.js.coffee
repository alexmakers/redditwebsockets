# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

sortPosts = ->
  $('.post-container > .post').tsort('.votes_count', { order: 'desc' })

$(document).ready ->
  sortPosts()

dispatcher = new WebSocketRails(window.location.host + '/websocket')

channel = dispatcher.subscribe('votes')
channel.bind 'update_vote', (post) ->
  $(".votes_count[data-id=#{post.id}]").text(post.points)

  sortPosts()