# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# create 3 projects
@project = Project.create(name: 'project one', user_id: 1)
Project.create(name: 'project two', user_id: 1)
Project.create(name: 'project three', user_id: 1)
@project_id = @project.id

# create 50 stickis for each project:
@project_id = 1
3.times do
    50.times do
        Sticki.create([
            name: '',
            content: Faker::Hipster.sentence(2),
            project_id: @project_id
        ])
    end
    @project_id += 1
end

# create Tasks for each of the three projects @project_id defined above:
# only the @task with task_id: nil needs to have a project_id assigned:
@starting_project_id = @project_id
3.times do
    5.times do 
        @parent_id = nil
        @task = Task.create(
            task_id: @parent_id, 
            content: Faker::Hipster.sentence(2),
            project_id: @project_id
            )
        @parent_id = @task.id
        5.times do 
            @task = Task.create(task_id: @parent_id, content: Faker::Hipster.sentence(2))
            @parent_id = @task.id
            5.times do 
                @task = Task.create(task_id: @parent_id, content: Faker::Hipster.sentence(2))
            end
        end
    end
    @project_id += 1;
    if(@project_id > @starting_project_id + 3) 
        @project_id -= 3
    end
end

# create tags:
Tag.create(name: 'tag')
