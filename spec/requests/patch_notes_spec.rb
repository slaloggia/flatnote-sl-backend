require 'rails_helper'

describe "PATCH /notes/:id" do
    before(:each) do
        @note = create(:random_note)
        @starting_db_count = NoteTag.count
    end

    context "updates note title" do

        it "updates an existing note title" do
            @new_title = "Not random"
            patch "/notes/#{@note.id}", params: { note: {title: @new_title} }

            expect(response).to have_http_status(:success)
            expect(Note.find(@note.id).title).to eq(@new_title)
            expect(Note.find(@note.id).content).to eq(@note.content)

        end
    end

    context "updates note content" do
        
        it "updates an existing note content" do
            @new_content = "This is not random"
            patch "/notes/#{@note.id}", params: { note: {content: @new_content} } 

            expect(response).to have_http_status(:success)
            expect(Note.find(@note.id).title).to eq(@note.title)
            expect(Note.find(@note.id).content).to eq(@new_content)

        end
    end


    context "createNoteTags adds tags to note" do
        
        it "creates instances of NoteTags" do
            patch "/notes/#{@note.id}", params: {
                note: {
                    title: "Note with tags",
                    tags: ["new", "test"]
                }
            } 

            expect(response).to have_http_status(:success)
            expect(NoteTag.count).to eq(@starting_db_count+2)
            expect(Note.find(@note.id).tags).to include(Tag.find_by(content: "new"))
        end
    end

end