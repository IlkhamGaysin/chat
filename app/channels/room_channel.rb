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
    Message.create(text: data["text"], room_id: data["room_id"])

    ActionCable.server.broadcast "room_#{data["room_id"]}_channel", data
  end
end
