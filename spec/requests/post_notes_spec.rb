require 'rails_helper'

describe "post new note route", :type => :request do
    before do
        @starting_db_count = Note.count
        user = FactoryBot.create(:random_user)
        
        post "/notes", params: {
            :user_id => user.id,
            :title => "Test title",
            :content => "This is some test content"
        } 
    end

    context "success" do
        it { expect(JSON.parse(response.body)['title']).to eq('Test title') }

        it { expect(JSON.parse(response.body)['content']).to eq('This is some test content') }

        it { expect(Note.count).to eq(@starting_db_count+1)}
    end
    
end