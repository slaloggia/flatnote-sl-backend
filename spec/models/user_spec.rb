require 'rails_helper'

RSpec.describe User do
    describe "#initalize" do
        before(:all) do
            create(:user)
        end
        starting_db_count = User.count    
        let(:user) {User.create(username: 'david_rose')}

        it "creates a new User instance" do
            expect(user).to be_an_instance_of User
        end

        it "saves the User to the database" do
            expect(User.count).to eq (starting_db_count +1)
        end

    end

end