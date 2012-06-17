module Watchtower
  class Tag < ActiveRecord::Base
    attr_accessible :name

    has_many :taggings, :class_name => "Watchtower::Tagging"
    has_many :contacts, :through => :taggings

    validates :name, :presence => true

    def to_s
      name
    end
  end
end
