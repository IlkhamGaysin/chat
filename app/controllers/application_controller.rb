class ApplicationController < ActionController::Base
  include Authentication
  include Authorization

  protect_from_forgery with: :exception

  responders :flash
  respond_to :html

  protected

  def serialize(resource, options = {})
    ActiveModelSerializers::SerializableResource.new(resource, options)
  end
end
