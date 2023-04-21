FactoryBot.define do
  factory :audit_log do
    user { nil }
    status { 1 }
    start_date { "2023-04-21" }
    end_date { "2023-04-21" }
  end
end
