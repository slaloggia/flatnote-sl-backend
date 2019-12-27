# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'sarah')
User.create(username: 'danny')
User.create(username: 'alisha')

Note.create(user_id: 1, title: "Sarah's First Note", content: "This is Sarah's first flat note")
Note.create(user_id: 1, title: "Another Note", content: "Sarah wrote another note. This one is longer.")
Note.create(user_id: 2, title: "Danny's First Note", content: "This is Danny's first flat note")
Note.create(user_id: 3, title: "Alisha's First Note", content: "This is Alisha's first flat note")

Tag.create(note_id: 1, content: "first")
Tag.create(note_id: 2, content: "second")
Tag.create(note_id: 2, content: "another")

puts 'SEEDED'
