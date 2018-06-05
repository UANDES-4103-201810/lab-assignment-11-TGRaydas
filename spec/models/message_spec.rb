require 'rails_helper'

RSpec.describe Message, type: :model do
  it "messege_test" do
    @model_instance = create(:message, user_id: User.all.first.id)
    expect(@model_instance).to be_valid
  end
  it "user_not_null_test" do
    @model_instance = build(:message, user_id:nil)
    expect(@model_instance).to_not be_valid
  end
  it "user_not_user_test" do
    @model_instance = build(:message, user_id: 99)
    expect(@model_instance).to_not be_valid
  end
end
