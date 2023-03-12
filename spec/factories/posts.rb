FactoryBot.define do
  factory :post do
    date { Date.today }
    sequence(:rationale) { |n| "Rationale Content #{n}" }
    user
  end

  factory :second_post, class: "Post" do
    date { Date.yesterday }
    sequence(:rationale) { |n| "Rationale Content #{n}" }
    user
  end
end
