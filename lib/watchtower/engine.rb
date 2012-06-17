module Watchtower
  mattr_accessor :user_class

  class Engine < ::Rails::Engine
    isolate_namespace Watchtower

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
