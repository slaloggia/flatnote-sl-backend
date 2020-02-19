require 'rails_helper'

describe "PATCH /notes/:id" do
    before(:each) do
        @note = create(:random_note)
    end

    it "updates an existing note title" do
        @new_title = "Not random"
        patch "/notes/#{@note.id}", params: { note: {title: @new_title} }

        expect(response).to have_http_status(:success)

        expect(Note.find(@note.id).title).to eq(@new_title)

        expect(Note.find(@note.id).content).to eq(@note.content)

    end

end