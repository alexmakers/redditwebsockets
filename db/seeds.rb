# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
Vote.delete_all

Post.create(title: 'Whatever', description: 'Lorem ipsum blah blah')
Post.create(title: 'Whatever2', description: 'Lorem ipsum blah blah')
voted = Post.create(title: 'Whatever3', description: 'Lorem ipsum blah blah')
puts 'Created 3 stories'

Vote.create(up: true, post: voted)
puts 'Created 1 vote'