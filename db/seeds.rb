@user = User.create(email: 'test@yahoo.com', 
                    password: '123123', 
                    password_confirmation: '123123', 
                    first_name: 'Kevin', 
                    last_name: 'Montesclaros',
                    phone: '121123123')

puts "1 User created"

AdminUser.create(email: 'admin@admin.com', 
            password: '123123', 
            password_confirmation: '123123', 
            first_name: 'Admin', 
            last_name: 'Admin', 
            phone: '121123123')

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, 
               rationale: "#{post} rationale content", 
               user_id: @user.id, 
               overtime_request: 2.5)
end

puts "100 Posts have been created"