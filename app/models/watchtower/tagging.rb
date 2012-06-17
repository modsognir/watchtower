module Watchtower
  class Tagging < ActiveRecord::Base
    belongs_to :contact
    belongs_to :tag
    attr_accessible :tag

    validates :contact_id, :uniqueness => { :scope => :tag_id }
  end
end
