class RoomsController < ApplicationController
  respond_to :html

  expose :room
  expose :rooms, -> { Room.all }
  expose_decorated :messages, from: :room

  def index
  end

  def new
  end

  def create
    room.save
    respond_with(room)
  end

  def show
  end

  private

  def room_params
    params.require(:room).permit(:title)
  end
end
