require 'faker'

100.times do |post|
  Post.create(date: Faker::Date.between(30.days.ago, Date.today), rationale: Faker::ChuckNorris.fact)
end

puts "100 posts have been created"