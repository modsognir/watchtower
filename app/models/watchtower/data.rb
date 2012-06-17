module Watchtower
  class Data < ActiveRecord::Base
    attr_accessible :content, :name, :primary

    belongs_to :contact, :class_name => "Watchtower::Contact"

    def name
      self[:name] || "Other"
    end

    def to_s
      content
    end
  end
end