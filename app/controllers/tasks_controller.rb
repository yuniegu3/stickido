class TasksController < ApplicationController
	before_action :authenticate_user!

# project_tasks GET   /projects/:project_id/tasks(.:format)  tasks#index
	def index
		@project = Project.find(params[:project_id]) 

		# @tasks = @project.tasks
		@tasks = Task.where(project_id: @project.id, task_id: nil)

		@duedates = Task.select(:duedate).where.not(duedate: nil).distinct.order(duedate: 'ASC') 
	end

# project_task GET   /projects/:project_id/tasks/:id(.:format)  tasks#show
	def show
		@task = Task.find(params[:id])
		@project = Project.find(params[:project_id])
	end

# new_project_task GET  /projects/:project_id/tasks/new(.:format) tasks#new
	def new
		@project = Project.find(params[:project_id])
 		@task = @project.tasks.new
	end

# POST  /projects/:project_id/tasks(.:format)  tasks#create
	def create
		@project = Project.find(params[:project_id])
		@task = @project.tasks.create(task_params)
		# im not 100% sure if this is the correct redirect route since it is a nested route..expect errors
		# link we want to go /projects/3/tasks
		redirect_to "/projects/#{@project.id}/tasks"
	end

# edit_project_task GET   /projects/:project_id/tasks/:id/edit(.:format) tasks#edit
	def edit
		@project = Project.find(params[:project_id])
		@task = Task.find(params[:id])
	end

# PATCH  /projects/:project_id/tasks/:id(.:format)     tasks#update
# PUT    /projects/:project_id/tasks/:id(.:format)     tasks#update
	def update
		@task = Task.find(params[:id])
        @task.update(task_params)
        # im not 100% sure if this is the correct redirect route since it is a nested route..expect errors
        redirect_to "/projects/#{@task.project_id}/tasks"
    end

#  DELETE /projects/:project_id/tasks/:id(.:format)      tasks#destroy
	def destroy
		@project = Project.find(params[:project_id])
		Task.find(params[:id]).destroy
		redirect_to "/projects/#{@project.id}/tasks"
	end

	private

	def task_params
		params.require(:task).permit(:name, :content, :sequence, :duedate, :project_id, :task_id, :id)
	end

end
