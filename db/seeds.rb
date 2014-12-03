# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
Burfday.create(
                name:Faker::Commerce.color,
                age:Faker::Date.between(10.years.ago, 70.years.ago),
                remote_photo_url:'http://lorempixel.com/400/400/people/',
                user_id:1,
            )
end
