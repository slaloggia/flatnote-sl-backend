class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: NoteSerializer.new(notes).to_serialized_json
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: NoteSerializer.new(note).to_serialized_json
    end
end
