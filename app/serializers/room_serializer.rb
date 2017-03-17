class RoomSerializer < ApplicationSerializer
  include Rails.application.routes.url_helpers

  attributes :id, :title

  attribute :links do
    id = object.id
    {
      self: room_path(id)
    }
  end
end
