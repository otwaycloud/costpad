namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "greg",
                         email: "admin@example.com",
                         password: "123456",
                         password_confirmation: "123456")
    admin.toggle!(:admin)

    User.create!(name: "Example User",
                 email: "example@example.com",
                 password: "foobar",
                 password_confirmation: "foobar")

  end
end