require_dependency "watchtower/application_controller"

module Watchtower
  class NotesController < ApplicationController
    def create
      @contact = Contact.find(params[:contact_id])
      @note = @contact.notes.build(params[:note])
      if @note.save
        redirect_to @contact, notice: "Note added."
      else
        redirect_to @contact, notice: "Note could not be added."
      end
    end
  end
end
