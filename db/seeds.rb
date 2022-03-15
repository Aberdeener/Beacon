# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
  )

  rand(1..3).times do
    user.projects.create(
      name: Faker::Lorem.word,
    )
  end
end

Project.all.each do |project|
  project.issues.each do |issue|
    issue.comments.create(
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph,
      created_by: User.all.sample,
    )
  end
end

Issue.all.each do |issue|
  rand(1..5).times do
    issue.comments.create(
      title: Faker::Lorem.sentence,
      description: Faker::Lorem.paragraph,
      created_by: User.all.sample,
    )
  end
end