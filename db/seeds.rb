# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:username => "pokemon", :password => "aaaaaaaa", :password_confirmation => "aaaaaaaa")
Contact.create(:texte1 => "contact test")
Honoraire.create(:texte1 => "honoraire test")
Specialite.create(:texte1 => "specialite test")
Index.create(:texte1 => "index test 1",:texte2 => "index test 2",:texte3 => "index test 3",:texte4 => "index test 4")
