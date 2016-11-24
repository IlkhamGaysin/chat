module Api
  class MessagesController < BaseController
    expose :room
    expose :messages, -> { room.messages }

    def index
      respond_with messages
    end
  end
end
