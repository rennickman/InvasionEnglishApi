# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create Doorkeeper applications for various types of clients - if none already exist in database
if Doorkeeper::Application.count.zero?
    Doorkeeper::Application.create!(name: "Web Client", redirect_uri: " ", scopes: "")
    Doorkeeper::Application.create!(name: "iOS Client", redirect_uri: " ", scopes: "")
    Doorkeeper::Application.create!(name: "Android Client", redirect_uri: " ", scopes: "")
    Doorkeeper::Application.create!(name: "React", redirect_uri: " ", scopes: "")
end


# Create an Admin user - if one doesn't already exist in db
User.first_or_create(
    email: 'renn@example.com',
    password: 'password',
    password_confirmation: 'password',
    role: User.roles[:admin]
)