# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# storing to variables, in order to capture ids for associated models

# create a user w/ id of one by signing up via devise and put the id in the @user_id variable:
@user_id = 1

# create projects for the user, and store the projects' ids in an array:
@project_ids = []
3.times do
    @project = Project.create(
        name: Faker::Book.title,
        user_id: @user_id
        )
    @project_ids.push(@project.id)
end

# create tasks to belong to each of the projects that were made

@project_ids.each do |project_id|
    5.times do
        @task = Task.create(
            name:Faker::Hipster.word,
            content:Faker::Hipster.sentence(2),
            project_id: project_id,
            task_id: nil,
            duedate: Faker::Date.forward(7)
        )
        # create sub-tasks for the parent task
          end
            5.times do
                @task = Task.create(
                    name:Faker::Hipster.word,
                    content:Faker::Hipster.sentence(2),
                    task_id: 1,
                    project_id: project_id
                )
        end
        5.times do
            @task = Task.create(
                name:Faker::Hipster.word,
                content:Faker::Hipster.sentence(2),
                task_id: 2,
                project_id: project_id
            )
    end
    5.times do
        @task = Task.create(
            name:Faker::Hipster.word,
            content:Faker::Hipster.sentence(2),
            task_id: 3,
            project_id: project_id
        )
    end
    5.times do
        @task = Task.create(
            name:Faker::Hipster.word,
            content:Faker::Hipster.sentence(2),
            task_id: 4,
            project_id: project_id
        )
    end
    5.times do
        @task = Task.create(
            name:Faker::Hipster.word,
            content:Faker::Hipster.sentence(2),
            task_id: 5,
            project_id: project_id
        )
    end
end

# make stickies for each project:
@project_ids.each do |project_id|
    50.times do
        Sticki.create(
            name: Faker::Hipster.word,
            content: Faker::Hipster.sentence(2),
            project_id: project_id
        )
    end
end

Project.create(name: "subtask holder", user_id: 1, id: 10000)
