require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do 
    it "is valid when a first name, last name, email, and password are provided" do 
      user = User.new(first_name: "Mark", last_name: "Merritt", email: "mark@example.com", password: "helloworld")
      
      expect(user).to be_valid
    end

    it "is not valid when a first name is not provided" do
      user = User.new(first_name: nil)
      user.valid?

      expect(user.errors[:first_name]).to include("can't be blank")
    end

    it "is not valid when a last name is not provided" do
      user = User.new(last_name: nil)
      user.valid?

      expect(user.errors[:last_name]).to include("can't be blank")
    end

    # Test Devise 
  end
end
