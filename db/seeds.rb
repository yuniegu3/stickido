# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(name: 'test')

Task.create(name: 'test task', content: 'lorem ipsum', sequence: 1, duedate: nil, project_id: 1)
Task.create(name: 'test subtask', content: 'ipsum lorem', sequence: 2, duedate: nil, project_id: 1, task_id: 1)

Sticki.create(name: 'test sticki', content: 'lorem ipsum ipsum lorem')

Tag.create(name: 'tag')
