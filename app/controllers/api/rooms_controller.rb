module Api
  class RoomsController < BaseController
    expose :room
    expose :rooms, -> { Room.all }

    def index
      respond_with rooms
    end

    def create
      room.save
      respond_with room
    end

    private

    def room_params
      params.require(:room).permit(:title)
    end
  end
end
