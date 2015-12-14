# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Commento = [{title: "hello", user_id: 1, content: "hello world"},
{title: "bla bla", user_id: 2, content: "u r blaa blaain"},
{title: "sounds fun", user_id: 2, content: "ha ha ha"}]
Commento2 = [{title: "helloha", user_id: 1, content: "helloha world"},
{title: "bla blaha", user_id: 2, content: "u r blaa blaahain"},
{title: "sounds fun ha", user_id: 2, content: "ha ha haha"}]
Slide.where(like: 2).each do |slide|
	slide.comments.create(Commento)
end
Slide.where(like: 1).each do |slide|
	slide.comments.create(Commento2)
end