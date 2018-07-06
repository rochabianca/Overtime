require 'faker'

100.times do |post|
  @user = User.create(email: Faker::Internet.email, password: "123456", password_confirmation: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  Post.create(date: Faker::Date.between(30.days.ago, Date.today), rationale: Faker::ChuckNorris.fact, user_id: @user.id)
end

@admin = User.create(email: "bianca.rocha@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Bianca", last_name: "Rocha");
Post.create(date: Faker::Date.between(30.days.ago, Date.today), rationale: Faker::ChuckNorris.fact, user_id: @admin.id)

puts "100 posts have been created"