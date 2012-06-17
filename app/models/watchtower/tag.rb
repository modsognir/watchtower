module Watchtower
  class Tag < ActiveRecord::Base
    attr_accessible :name

    def to_s
      name
    end
  end
end
