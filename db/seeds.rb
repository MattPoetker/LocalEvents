# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{ name: 'Food'}, { name: 'Entertainment'}, { name: 'Sports'}, {name: 'Music'}, {name: 'Other'}])

Event.create(name: 'Wing Night at The Double Decker', date: 'Every Wednesday Night', time: 'Starts at 6pm', description: 'Get a pound of wings for 3 dollars on Wednesday nights. You must purchase a drink with your meal.', host_id: 1, category_id: 1)

Host.create(name: 'The Double Decker', website: 'No Website', email: 'test@example.com', password_digest: 'Test1')