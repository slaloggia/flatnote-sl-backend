require 'rails_helper'

describe "get all users route", :type => :request do
    let!(:users) { FactoryBot.create_list(:random_user, 10)}

    before { get "/users"}

    context "success" do
        it {expect(JSON.parse(response.body).size).to eq(10)}
        it {expect(response).to have_http_status(:success)}
    end
end

describe "GET /users/:id", :type => :request do
    let!(:users) { FactoryBot.create_list(:random_user, 10)}
    let(:user_id) { rand(1...10) }
    before { get "/users/#{user_id}"}

    context "success" do
        it {expect(response).to have_http_status(:success)}
    end
end