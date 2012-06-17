module Watchtower
  class Note < ActiveRecord::Base
    belongs_to :user, :class_name => Watchtower.user_class
    belongs_to :contact
    attr_accessible :content

    def to_s
      content
    end
  end
end
