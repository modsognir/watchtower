module Watchtower
  class Email < ActiveRecord::Base
    attr_accessible :address, :name, :primary

    belongs_to :contact, :class_name => "Watchtower::Contact"

    def name
      self[:name] || "Other"
    end

    def to_s
      address
    end
  end
end
