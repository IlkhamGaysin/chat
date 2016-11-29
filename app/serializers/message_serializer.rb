class MessageSerializer < ApplicationSerializer
  include ActionView::Helpers::DateHelper

  attributes :text, :created_ago

  #TODO: needs refactor
  def created_ago
    time_ago_in_words(object.created_at) + " ago"
  end
end
