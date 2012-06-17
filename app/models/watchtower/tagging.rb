module Watchtower
  class Tagging < ActiveRecord::Base
    belongs_to :contact
    belongs_to :tag
    attr_accessible :tag
  end
end
