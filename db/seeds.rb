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
    @level_one_sequence = 1
    10.times do
        @task = Task.create(
            name:Faker::Hipster.word,
            content:Faker::Hipster.sentence(2),
            sequence: @level_one_sequence,
            project_id: project_id,
            task_id: nil,
            duedate: Faker::Date.forward(7)
        )
        @level_one_sequence += 1
        # create sub-tasks for the parent task
        @parent_task_id_one_deep = @task.id
        @level_two_sequence = 1
        10.times do
            @task = Task.create(
                name:Faker::Hipster.word,
                content:Faker::Hipster.sentence(2),
                sequence: @level_two_sequence,
                task_id: @parent_task_id_one_deep,
                project_id: nil
            )
            @level_two_sequence += 1
            @parent_task_id = @task.id
            @level_three_sequence = 1
            5.times do
                @task = Task.create(
                name:Faker::Hipster.word,
                content:Faker::Hipster.sentence(2),
                sequence: @level_three_sequence,
                task_id: @parent_task_id,
                project_id: nil
            )
            @level_three_sequence += 1
            end
        end
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
