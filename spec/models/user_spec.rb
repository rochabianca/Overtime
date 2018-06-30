require 'rails_helper'

RSpec.describe User, type: :model do
  before do 
    @user = FactoryBot.create(:user)
  end

  describe "Creation" do
    it "can be created" do
      expect(@user).to be_valid 
    end

    it "cannot be created without fisrt_name and last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    it 'has a full method that combines first and last name' do
      expect(@user.full_name).to eq("LANNISTER, TYRION")
    end
  end
end
