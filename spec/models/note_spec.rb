require 'rails_helper'

RSpec.describe Note do
    describe '#initialize' do
        before(:all) do
            @starting_db_count =  Note.count
            @user = create(:user)
            @new_note = Note.create(user_id: @user.id, title: 'This Note', content: 'This is a note')
        end
        it {expect(@new_note).to be_an_instance_of Note}

        it {expect(Note.count).to eq (@starting_db_count +1)}

        it {expect(@new_note.title).to be_a(String)} 

        it {expect(@new_note.user.username).to eq ("testing_123")}

    end
end