require 'rails_helper'

describe 'admin dashboard' do
  it 'does now allow user to access without being signed in' do
    visit admin_root_path
    expect(current_path).to eq(new_user_session_path)
  end

  it 'cannot be reached by a non admin users' do
    user = FactoryBot.create(:user)
    login_as(user, scope: :user)

    visit admin_root_path

    expect(current_path).to eq(root_path)
  end

  it 'can be reached by an admin users' do
    admin_user = FactoryBot.create(:admin_user)
    login_as(admin_user, scope: :user)

    visit admin_root_path
    expect(current_path).to eq(admin_root_path)
  end
end
