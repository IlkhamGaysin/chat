$ ->
  $messages = $('#messages')
  room_id = $messages.data('room-id')

  if $messages.length
    App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id: room_id },
      connected: ->
        # Called when the subscription is ready for use on the server

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (html) ->
        $messages.append(html)

      create_message: (text, room_id)->
        @perform 'create_message', text: text, room_id: room_id

    $('#new_message').on "submit", (e) ->
      e.preventDefault()
      $textarea = $(this).find('#message_text')
      text = $textarea.val()

      if text.length
        App.room.create_message text, room_id
        $textarea.val('')

      return false
