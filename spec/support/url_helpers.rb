module Watchtower
  module UrlHelpers
    def wtapp
      Watchtower::Engine.routes.url_helpers
    end
  end
end