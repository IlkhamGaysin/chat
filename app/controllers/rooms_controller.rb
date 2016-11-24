class RoomsController < ApplicationController
  respond_to :html

  expose :room
  expose :rooms, -> { Room.page(params[:page]) }
  expose :messages, from: :room

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
