# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

News.create(:title => "Website deployed", :text => "Website now deployed
  with a light back-end")

User.create(:name => 'admin1', :email => ""+ENV["GMAIL_USERNAME"],
  :password => ""+ENV["GMAIL_PASSWORD"])
