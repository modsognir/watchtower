module Watchtower
  class Address < ActiveRecord::Base
    attr_accessible :address_1, :address_2, :address_3, :city, :country, :name, :postcode, :state
  end
end
