module Watchtower
  class Contact < ActiveRecord::Base
    attr_accessible :first_name, :gender, :last_name, :middle_name, :primary_phone, :primary_email

    module DataExtension
      def add(string, opts={})
        create(content: string, primary: opts[:primary])
      end
    end

    has_many :emails, :class_name => "Watchtower::Email", :extend => DataExtension
    has_many :phones, :class_name => "Watchtower::Phone", :extend => DataExtension

    has_many :addresses, :class_name => "Watchtower::Address"


    %w(email address phone).each do |type|
      define_method "primary_#{type}" do
        self.send(type.pluralize).where(primary: true).first || self.send(type.pluralize).first
      end

      define_method "primary_#{type}=" do |addr|
        self.send(type.pluralize).build(content: addr, primary: true)
      end
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