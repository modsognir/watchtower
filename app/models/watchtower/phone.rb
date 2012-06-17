module Watchtower
  class Phone < ActiveRecord::Base
    attr_accessible :number

    belongs_to :contact, :class_name => "Watchtower::Contact"

    def to_s
      number
    end
  end
end
