module Watchtower
  class Contact < ActiveRecord::Base
    attr_accessible :first_name, :gender, :last_name, :middle_name

    module DataExtension
      def add(string)
        create(content: string)
      end
    end

    has_many :emails, :class_name => "Watchtower::Email", :extend => DataExtension
    has_many :phones, :class_name => "Watchtower::Phone", :extend => DataExtension

    has_many :addresses, :class_name => "Watchtower::Address"

    def primary_email
      emails.where(primary: true).first || emails.first
    end

    def primary_address
      addresses.where(primary: true).first || addresses.first
    end

    def primary_phone
      phones.where(primary: true).first || phones.first
    end

    def full_name
      [first_name, middle_name, last_name].compact.join(' ')
    end

    def name
      full_name
    end

    def to_s
      full_name
    end
  end
end