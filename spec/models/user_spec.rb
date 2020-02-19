require 'rails_helper'

RSpec.describe User do
    describe "#initalize" do
        starting_db_count = User.count    
        let!(:user) {create(:user)}

        context "success" do
            it "adds new User instance to database" do
                expect(user).to be_an_instance_of User
                expect(User.count).to eq (starting_db_count +1)
            end
        end
    end
end