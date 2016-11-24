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
  end
end
