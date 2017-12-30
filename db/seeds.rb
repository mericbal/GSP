# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Location.destroy_all
Daily.destroy_all

User.create(username: 'admin', email: 'admin@admin.com', password: 'passw0rd')
User.create(username: 'meric', email: 'meric@admin.com', password: 'pass')
User.create(username: 'eren', email: 'eren@admin.com', password: 'akinci')
User.create(username: 'ersel', email: 'ersel@admin.com', password: 'oran')
User.create(username: 'erkan', email: 'erkan@admin.com', password: 'cakir')
User.create(username: 'sahir', email: 'sahir@admin.com', password: '1234')


Location.create(name: '17th Street')
Location.create(name: '469 Eddy')
Location.create(name: '21st & Capp St')

colors = %w( Blue Black Red Gray Silver Yellow Green Gold )
makes = %w( Honda Toyota BMW Mercedes Ford Cadillac Hyundai Kia Nissan Chevy Subaru Acura )


100.times do |i|
	Daily.create(color: colors.sample, make: makes.sample, ticket_no: "180-7#{i}", price: 15, user_id: 1, location_id: rand(1..3), paid: false)
end


p 'Seeding Completed !'
