class ProjectsController < ApplicationController
	before_action :authenticate_user!

# projects GET  /projects(.:format)   projects#index
	def index
		@projects = Project.all
	end

# project GET  /projects/:id(.:format)   projects#show
	def show
		@project = Project.find(params[:id])
		@tasks = @project.tasks 

	end

# new_project GET  /projects/new(.:format)  projects#new
	def new
		@project = Project.new
	end

# POST   /projects(.:format)  projects#create
	def create
		Project.create(project_params)
		redirect_to '/projects'
	end

# edit_project GET    /projects/:id/edit(.:format)    projects#edit
	def edit
		@project = Project.find(params[:id])
	end

# PATCH  /projects/:id(.:format)   projects#update
# PUT    /projects/:id(.:format)   projects#update
	def update
		@project = Project.find(params[:id])
        @project.update(project_params)
        redirect_to '/projects'
	end

# DELETE /projects/:id(.:format)  projects#destroy
	def destroy
		Project.find(params[:id]).destroy
		redirect_to '/projects'
	end

	private

	def project_params
		params.require(:project).permit(:name, :user_id, :id)
	end

end
