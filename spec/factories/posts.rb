FactoryBot.define do
  factory :post do
    date { Date.today }
    sequence(:work_performed) { |n| "Rationale Content #{n}" }
    daily_hours { 3.5 }
    user
  end

  factory :second_post, class: 'Post' do
    date { Date.yesterday }
    sequence(:work_performed) { |n| "Rationale Content #{n}" }
    daily_hours { 0.5 }
    user
  end

  factory :post_from_other_user, class: 'Post' do
    date { Date.yesterday }
    sequence(:work_performed) { |n| "Rationale Content #{n}" }
    daily_hours { 0.5 }
    user
  end
end
