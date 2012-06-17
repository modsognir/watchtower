module Watchtower
  class Address < ActiveRecord::Base
    attr_accessible :address_1, :address_2, :address_3, :city, :country, :kind, :name, :postcode, :state

    def kind
      self[:kind] || "primary"
    end

    def full_address
      [:address_1, :address_2, :address_3, :city, :state, :country].compact.join("\n")
    end

    def to_s
      name
    end
  end
end
