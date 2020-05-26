# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Instrument.destroy_all
Booking.destroy_all

email1 = "host1@test.de"
encrypted_password1 = "host1"

User.create(email: email1, encrypted_password: encrypted_password1)

email2 = "host2@test.de"
encrypted_password2 = "host2"

User.create(email: email2, encrypted_password: encrypted_password2)

email3 = "host3@test.de"
encrypted_password3 = "host3"

User.create(email: email3, encrypted_password: encrypted_password3)

email4 = "host4@test.de"
encrypted_password4 = "host4"

User.create(email: email4, encrypted_password: encrypted_password4)

raise
puts "Users created"

