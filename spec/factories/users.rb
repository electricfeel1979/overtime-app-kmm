FactoryBot.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name { "Kevin" }
    last_name { "Montesclaros" }
    email { generate :email }
    password { "123123" }
    password_confirmation { "123123"}
  end

  factory :admin_user, class: "AdminUser" do
    first_name { "Admin" }
    last_name { "User" }
    email { generate :email }
    password { "123123" }
    password_confirmation { "123123"}
  end

  factory :non_authorized_user, class: "User" do
    first_name { "Non" }
    last_name { "Authorized" }
    email { generate :email }
    password { "123123" }
    password_confirmation { "123123"}
  end
end
