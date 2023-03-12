FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale { "Some Rationale" }
    association :user
  end

  factory :second_post, class: "Post" do
    date { Date.yesterday }
    rationale { "Some Rationale" }
    association :user
  end
end
