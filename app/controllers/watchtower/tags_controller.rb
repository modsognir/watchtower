module Watchtower
  class TagsController < ApplicationController
    def index
      @tags = Tag.all
    end
  end
end