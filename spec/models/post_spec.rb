require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Creation' do
    before do
      @user = FactoryBot.create(:user)
      # debugger
      @post = FactoryBot.build_stubbed(:post, user: @user)
    end
    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date, rationale and overtime_request' do
      @post.date = nil
      @post.rationale = nil
      @post.overtime_request = nil

      expect(@post).not_to be_valid
    end

    it 'has an overtime_request greater than 0.0' do
      @post.overtime_request = 0.0
      expect(@post).to_not be_valid
    end
  end
end
