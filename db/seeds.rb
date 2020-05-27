# require "date"
# require "pry-byebug"

# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Instrument.destroy_all
# Booking.destroy_all


# #------ User seed -------

# email1 = "host1@test.de"
# password1 = "host123456"
# password_confirmation1 = "host123456"

# user1 = User.new(email: email1, password: password1, password_confirmation: password_confirmation1)
# user1.save


# email2 = "host2@test.de"
# password2 = "host123456"
# password_confirmation2 = "host123456"

# user2 = User.create(email: email2, password: password2, password_confirmation: password_confirmation2)
# user2.save


# email3 = "host3@test.de"
# password3 = "host123456"
# password_confirmation3 = "host123456"

# user3 = User.create(email: email3, password: password3, password_confirmation: password_confirmation3)
# user3.save


# email4 = "host4@test.de"
# password4 = "host123456"
# password_confirmation4 = "host123456"

# user4 = User.create(email: email4, password: password4, password_confirmation: password_confirmation4)
# user4.save

# puts "Users created"



# #------- Instrument seed --------

# name1 = "Gibson Les Paul 58 Washed Cherry VOS"
# photo1 = "https://www.thomann.de/pics/bdb/459294/13946721_800.jpg"
# category1 = "Guitar"
# description1 = "Les Paul 1958 made from mahagony"
# price_per_day1 = 140
# user_id1 = user2.id

# instrument1 = Instrument.new(name: name1, photo: photo1, category: category1, description: description1,
#   price_per_day: price_per_day1, user_id: user_id1)
# instrument1.save!


# name2 = "Gibson LP 57 Black Beauty Gloss"
# photo2 = "https://images.gibson.com/Products/Electric-Guitars/2018/Custom/57-LP-Custom/LPB57VOEBGH1_ELECTRONICS_GLAM.jpg"
# category2 = "Guitar"
# description2 = "1957 Black Beauty Custom Shop Model made from mahagony"
# price_per_day2 = 170
# user_id2 = user1.id

# instrument2 = Instrument.new(name: name2, photo: photo2, category: category2, description: description2,
#   price_per_day: price_per_day2, user_id: user_id2)
# instrument2.save


# name3 = "Epi­phone Les Paul Classic Worn HC"
# photo3 = "https://www.session.de/out/pictures/generated/product/1/665_665_75/EPIPHONE_Les_Paul_Classic_Worn_HC.jpg"
# category3 = "Guitar"
# description3 = "1957 Black Beauty Custom Shop Model made from mahagony"
# price_per_day3 = 90
# user_id3 = user3.id

# instrument3 = Instrument.new(name: name3, photo: photo3, category: category3, description: description3,
#   price_per_day: price_per_day3, user_id: user_id3)
# instrument3.save


# name4 = "Steinway & Sons M-170 black mat"
# photo4 = "https://images.static-thomann.de/pics/bdb/475041/14498364_800.jpg"
# category4 = "Piano"
# description4 = "Made in 1949 with a unique sound"
# price_per_day4 = 700
# user_id4 = user4.id

# instrument4 = Instrument.new(name: name4, photo: photo4, category: category4, description: description4,
#   price_per_day: price_per_day4, user_id: user_id4)
# instrument4.save


# name5 = "Steinway & Sons O-180 Walnut"
# photo5 = "https://images.static-thomann.de/pics/bdb/437491/13066621_800.jpg"
# category5 = "Piano"
# description5 = "Made in 1925, characterized by a precise sound"
# price_per_day5 = 1000
# user_id5 = user1.id

# instrument5 = Instrument.new(name: name5, category: category5, description: description5,
#   price_per_day: price_per_day5, user_id: user_id5)
# instrument5.save


# name6 = "Franz Sandner Master de luxe Stra­di­vari"
# photo6 = "https://images.static-thomann.de/pics/bdb/472492/14670721_800.jpg"
# category6 = "Violin"
# description6 = "Similar to Stra­di­vari"
# price_per_day6 = 200
# user_id6 = user4.id

# instrument6 = Instrument.new(name: name6, photo: photo6, category: category6, description: description6,
#   price_per_day: price_per_day6, user_id: user_id6)
# instrument6.save


# name7 = "Scala Vil­agio PSH07/​B Solo Violin Guar­neri"
# photo7 = "https://images.static-thomann.de/pics/bdb/478777/14902035_800.jpg"
# category7 = "Violin"
# description7 = "Made in Germany out of bavarian spruce"
# price_per_day7 = 700
# user_id7 = user3.id

# instrument7 = Instrument.new(name: name7, photo: photo7, category: category7, description: description7,
#   price_per_day: price_per_day7, user_id: user_id7)
# instrument7.save


# name8 = "Bach 180-37 ML Trumpet"
# photo8 = "https://www.thomann.de/pics/bdb/100205/6947433_800.jpg"
# category8 = "Trumpet"
# description8 = "Great sound because of brass quality"
# price_per_day8 = 150
# user_id8 = user1.id

# instrument8 = Instrument.new(name: name8, category: category8, description: description8,
#   price_per_day: price_per_day8, user_id: user_id8)
# instrument8.save

# puts "Instrument created"


# #------ Seed bookings -------

# instrument_id1 = instrument3.id
# user_id1 = user2.id
# start_date1 = Date.civil(2020,7,12)
# end_date1 = Date.civil(2020,7,20)
# difference1 = (end_date1 - start_date1).to_i
# total_price1 = difference1 * instrument3.price_per_day
# status1 = "accepted"

# booking1 = Booking.new(instrument_id: instrument_id1, user_id: user_id1,
#   start_date: start_date1, end_date: end_date1, total_price: total_price1, status: status1)
# booking1.save!


# instrument_id2 = instrument5.id
# user_id2 = user4.id
# start_date2 = Date.civil(2020,6,1)
# end_date2 = Date.civil(2020,6,5)
# difference2 = (end_date1 - start_date1).to_i
# total_price2 = difference1 * instrument3.price_per_day
# status2 = "declined"

# booking2 = Booking.new(instrument_id: instrument_id2, user_id: user_id2,
#   start_date: start_date2, end_date: end_date2, total_price: total_price2, status: status2)
# booking1.save!


# instrument_id3 = instrument6.id
# user_id3 = user1.id
# start_date3 = Date.civil(2020,7,1)
# end_date3 = Date.civil(2020,7,4)
# difference3 = (end_date1 - start_date1).to_i
# total_price3 = difference1 * instrument3.price_per_day
# status3 = "accepted"

# booking3 = Booking.new(instrument_id: instrument_id3, user_id: user_id3,
#   start_date: start_date3, end_date: end_date3, total_price: total_price3, status: status3)
# booking3.save!


# instrument_id4 = instrument2.id
# user_id4 = user2.id
# start_date4 = Date.civil(2020,8,1)
# end_date4 = Date.civil(2020,8,20)
# difference4 = (end_date1 - start_date1).to_i
# total_price4 = difference1 * instrument3.price_per_day
# status4 = "declined"

# booking4 = Booking.new(instrument_id: instrument_id4, user_id: user_id4,
#   start_date: start_date4, end_date: end_date4, total_price: total_price4, status: status4)
# booking4.save!


# instrument_id5 = instrument8.id
# user_id5 = user3.id
# start_date5 = Date.civil(2020,7,4)
# end_date5 = Date.civil(2020,7,7)
# difference5 = (end_date1 - start_date1).to_i
# total_price5 = difference1 * instrument3.price_per_day
# status5 = "accepted"

# booking5 = Booking.new(instrument_id: instrument_id5, user_id: user_id5,
#   start_date: start_date5, end_date: end_date5, total_price: total_price5, status: status5)
# booking5.save!

# puts "Bookings created"
