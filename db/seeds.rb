# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Slide.destroy_all
number = 1
first_doc = Document.find_by(id: 1)
first_doc.slides.create(
	[{path: "#{first_doc.path}_#{number}",like: 0, number: number},
	 {path: "#{first_doc.path}_#{number+1}",like: 0, number: number+1},
	 {path: "#{first_doc.path}_#{number+2}",like: 0, number: number+2}])
first_doc = Document.find_by(id: 2)
first_doc.slides.create(
	[{path: "#{first_doc.path}_#{number}",like: 0, number: number},
	 {path: "#{first_doc.path}_#{number+1}",like: 0, number: number+1},
	 {path: "#{first_doc.path}_#{number+2}",like: 0, number: number+2}])