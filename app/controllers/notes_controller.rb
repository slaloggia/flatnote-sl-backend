class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: NoteSerializer.new(notes).to_serialized_json
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: NoteSerializer.new(note).to_serialized_json
    end

    def create 
        note = Note.create(user_id: params[:user_id], title: params[:title], content: params[:content])
        render json: NoteSerializer.new(note).to_serialized_json
    end

    def update
        note = Note.find(params[:id])
        note.update(params)
        note.save
        render json: NoteSerializer.new(note).to_serialized_json
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: NoteSerializer.new(note).to_serialized_json
    end
end
