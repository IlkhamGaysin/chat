# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stop_all_streams
    stream_from "room_#{params['room_id']}_channel"
  end

  def unsubscribed
    stop_all_streams
  end

  def create_message(data)
    text = data["text"]
    room_id = data["room_id"]

    message = Message.create(text: text, room_id: room_id)

    ActionCable.server.broadcast "room_#{room_id}_channel", render_message(message)
  end

  private

  def render_message(message)
    ApplicationController.render partial: 'messages/message', locals: { message: message }
  end
end
