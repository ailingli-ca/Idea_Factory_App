# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Idea.destroy_all
User.destroy_all

PASSWORD = "123"
super_user = User.create(
  first_name: "Admin",
  last_name: "User",
  email: "admin@user.com",
  password: PASSWORD
)

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name}@#{last_name}.com",
    password: PASSWORD
  )
end

users = User.all

30.times do 
    created_at = Faker::Date.backward(days:365 * 5 )

    i = Idea.create(
        title: Faker::Book.title,
        description: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false),
        created_at: created_at,
        updated_at: created_at, 
        user: users.sample   
    )

end

ideas = Idea.all

p "Generated #{ideas.count} ideas"
p "Generated #{users.count} users"