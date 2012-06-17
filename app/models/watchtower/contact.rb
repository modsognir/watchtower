module Watchtower
  class Contact < ActiveRecord::Base
    attr_accessible :first_name, :gender, :last_name, :middle_name

    has_many :emails, :class_name => "Watchtower::Email" do
      def add(string)
        create(address: string)
      end
    end

    has_many :phones, :class_name => "Watchtower::Phone" do
      def add(string)
        create(number: string)
      end
    end

    def primary_email
      emails.where(primary: true).first || emails.first
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