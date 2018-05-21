# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# storing to variables, in order to capture ids for associated models

@project_ids = []
# create 3 projects
3.times do 
    @project = Project.create(
        name: Faker::Book.title, 
        user_id: 1)
    @project_ids.push(@project.id)
end


# create 50 stickis for each project:
@project_id = @project_ids[0]
@project_count = @project_ids.length
@project_count.times do
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
@starting_project_id = @project_ids[0]
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
    # to do: look up modulus operator in ruby
    if(@project_id > @starting_project_id + @project_ids.length) 
        @project_id -= @project_ids.length
    end
end

# create 20 tags
@tags = []
20.times do 
    @new_tag = Tag.create({
        name: Faker::Hipster.word
    })
end

# associate the tags with stickies:
@tags.length.do 
    50.times do 
        
    end
end
