FactoryBot.define do
  factory :user do
    first_name { "Kevin" }
    last_name { "Montesclaros" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password { "123123" }
    password_confirmation { "123123"}
  end

  factory :admin_user, class: "AdminUser" do
    first_name { "Admin" }
    last_name { "User" }
    sequence(:email) { |n| "admin#{n}@user.com" }
    password { "123123" }
    password_confirmation { "123123"}
  end
end
