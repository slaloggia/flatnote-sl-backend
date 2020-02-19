require 'rails_helper'

describe "get all notes route" do
    let!(:notes) { FactoryBot.create_list(:random_note, 20) }

    before { get "/notes" }

    context "success" do
        it { expect(JSON.parse(response.body).size).to eq(20) }
        it { expect(response).to have_http_status(:success) }
    end
end

describe "get one note route" do
    let!(:notes) { FactoryBot.create_list(:random_note, 20) }
    let!(:note_id) { rand(1...10) }

    before { get "/notes/#{note_id}"}

    context "success" do
        it { expect(response).to have_http_status(:success)}
    end
end