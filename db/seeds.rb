@user = User.create(email: 'test@yahoo.com', password: '123123', password_confirmation: '123123', first_name: 'Kevin', last_name: 'Montesclaros')

puts "1 User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"