require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Creation' do
    before do
      @user = User.create(:first_name => 'Buru', :last_name => 'gudoy', email: 'test@test.com', password: '123123', password_confirmation: '123123')
      # debugger
      @post = Post.create(date: Date.today, rationale: 'Anything', user_id: @user.id)
    end
    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date and rationale' do
      @post.date = nil
      @post.rationale = nil

      expect(@post).not_to be_valid
    end
  end
end
