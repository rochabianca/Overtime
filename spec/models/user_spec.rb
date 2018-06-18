require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creation" do
    before do 
      @user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "Tyrion", last_name: "Lannister")
    end

    it "can be created" do
      expect(@user).to be_valid 
    end

    it "cannot be created without fisrt_name and last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
