class TasksController < ApplicationController
	before_action :authenticate_user!

# project_tasks GET   /projects/:project_id/tasks(.:format)  tasks#index
	def index
		@tasks = Task.all
	end

# project_task GET   /projects/:project_id/tasks/:id(.:format)  tasks#show
	def show
		@task = Task.find(params[:id])
	end

# new_project_task GET  /projects/:project_id/tasks/new(.:format) tasks#new
	def new
		Task.new
	end

# POST  /projects/:project_id/tasks(.:format)  tasks#create
	def create
		Task.create(task_params)
		# im not 100% sure if this is the correct redirect route since it is a nested route..expect errors
		redirect_to '/projects/:project_id/tasks'
	end

# edit_project_task GET   /projects/:project_id/tasks/:id/edit(.:format) tasks#edit
	def edit
		@task = Task.find(params[:id])
	end

# PATCH  /projects/:project_id/tasks/:id(.:format)     tasks#update
# PUT    /projects/:project_id/tasks/:id(.:format)     tasks#update
	def update
		@task = Task.find(params[:id])
        @task.update(task_params)
        # im not 100% sure if this is the correct redirect route since it is a nested route..expect errors
        redirect_to '/projects/:project_id/tasks'
    end

#  DELETE /projects/:project_id/tasks/:id(.:format)      tasks#destroy
	def destroy
		Task.find(params[:id]).destroy
		redirect_to '/projects/:project_id/tasks'
	end

	private

	def task_params
		params.require(:task).permit(:name, :content, :sequence, :duedate, :project_id, :task_id, :id)
	end 
		
end



