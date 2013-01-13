namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    
    users = User.all(limit: 6)
    35.times do
      title = Faker::Lorem.sentence(6)
      if rand(2) == 0
      	pub_type = "newspaper"
      else
      	pub_type = "conference"
      end
      pub_name = Faker::Lorem.sentence(1)
      year = rand(1980...2012)
      month = rand(1...13)
      pages = rand(5...500)
      notes = Faker::Lorem.sentence(50)
      summary = Faker::Lorem.sentence(150)
      
      users.each { |user| user.publications.create!(title: title, pub_type: pub_type, pub_name: pub_name, year: year, month: month, pages: pages, notes: notes, summary: summary) }
    end
  end
end

