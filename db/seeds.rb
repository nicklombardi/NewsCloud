# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

l1 = Location.create(address: "New York", url: "1")
l2 = Location.create(address: "London", url: "2")
l3 = Location.create(address: "Lafayette, NJ", url: "3")
l4 = Location.create(address: "Fairfield, nj", url: "1")
