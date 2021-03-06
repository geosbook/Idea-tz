namespace :db do
  desc 'Fill database with sample data'
  task populate: :environment do
    admin = User.create!(name: 'IDea',
                          email: 'italiandealings@gmail.com',
                          password: 'foobar',
                          password_confirmation: 'foobar')
     admin.toggle!(:admin)
    20.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                            email: email,
                            password: password,
                            password_confirmation: password)
    end
  end
end