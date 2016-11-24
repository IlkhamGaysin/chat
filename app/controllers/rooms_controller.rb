class RoomsController < ApplicationController
  respond_to :html

  expose :room
  expose :rooms, -> { Room.page(params[:page]) }

  def create
    room.save
    respond_with(room)
  end

  def update
    room.update_attributes(room_params)
    respond_with(room)
  end

  def destroy
    room.destroy
    respond_with(room)
  end

  private

  def room_params
    params.require(:room).permit(:title)
  end
end
