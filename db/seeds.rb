# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Commento = [{title: "hellya", user_id: 1, content: "hello world"},
{title: "bla bla ya", user_id: 2, content: "u r blaa blaain"},
{title: "sounds funya", user_id: 2, content: "ha ha ha"}]
Commento2 = [{title: "helloha ya", user_id: 1, content: "helloha world"},
{title: "bla blaha ya", user_id: 2, content: "u r blaa blaahain"},
{title: "sounds fun ha ya", user_id: 2, content: "ha ha haha"}]
Document.find_by(id: 2).comments.create(Commento)
Document.find_by(id: 1).comments.create(Commento)