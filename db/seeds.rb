@user = User.create(email: 'test@yahoo.com', 
                    password: '123123', 
                    password_confirmation: '123123', 
                    first_name: 'Kevin', 
                    last_name: 'Montesclaros',
                    phone: '1111111111')

puts "1 User created"

AdminUser.create(email: 'admin@admin.com', 
            password: '123123', 
            password_confirmation: '123123', 
            first_name: 'Admin', 
            last_name: 'Admin', 
            phone: '1111111111')

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, 
               rationale: "#{post} rationale content", 
               user_id: @user.id, 
               overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
	AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"