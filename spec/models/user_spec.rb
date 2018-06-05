require 'rails_helper'

RSpec.describe User, type: :model do
  it "user_username_unique_test" do
    @model_instance = create(:user)
    @user = build(:user)
    expect(@user).to_not be_valid
  end
  it "user_valid_attr" do
    @model_instance = create(:user)
    expect(@model_instance).to be_valid
  end
  it "user_email_unique_test" do
    @model_instance = create(:user)
    @user = build(:user)
    expect(@user).to_not be_valid
  end
  it "user_username_20less_test" do
    @model_instance = build(:user, username: "tgssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss")
    expect(@model_instance).to_not be_valid
  end
end
