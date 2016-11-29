class ApplicationDecorator < Draper::Decorator
  delegate :to_model

  def self.collection_decorator_class
    PaginatingDecorator
  end

  def created_ago
    h.time_ago_in_words(object.created_at) + " ago"
  end
end
