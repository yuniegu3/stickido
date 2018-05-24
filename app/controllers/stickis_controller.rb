class StickisController < ApplicationController
	before_action :authenticate_user!

#     stickis GET    /stickis(.:format) stickis#index
	def index
		@stickis = Sticki.where(project_id: params[:project_id]).order(created_at: :desc)
	end

#      sticki GET    /stickis/:id(.:format) stickis#show
	def show
		@sticki = Sticki.find(params[:id])
	end

#  new_sticki GET    /stickis/new(.:format) stickis#new
	def new
		@project = Project.find(params[:project_id])
		@sticki = @project.stickis.new
	end

#             POST   /stickis(.:format) stickis#create
	def create
		@project = Project.find(params[:project_id])
		@sticki = @project.stickis.create(sticki_params)
		# redirect_to '/stickis'
		redirect_to "/projects/#{@sticki.project_id}/stickis"
		# this should go back to the tasks page right? Cuz stickis will be shown there(on desktop view)
		# find out how to redirect to /stickis if mobile view.
	end

# edit_sticki GET    /stickis/:id/edit(.:format) stickis#edit
	def edit
		@project = Project.find(params[:project_id])
		@sticki = Sticki.find(params[:id])
	end

#             PATCH  /stickis/:id(.:format) stickis#update
#             PUT    /stickis/:id(.:format) stickis#update
	def update
		@sticki = Sticki.find(params[:id])
   		@sticki.update(sticki_params)
		redirect_to "/projects/#{@sticki.project_id}/stickis"
		# this should go back to the tasks page right? Cuz stickis will be shown there(on desktop view)
		# find out how to redirect to /stickis if mobile view.
	end

#             DELETE /stickis/:id(.:format) stickis#destroy
	def destroy
		@project = Project.find(params[:project_id])
		Sticki.find(params[:id]).destroy
		redirect_to "/projects/#{@project.id}/stickis"
		# this should go back to the tasks page right? Cuz stickis will be shown there(on desktop view)
		# find out how to redirect to /stickis if mobile view.
	end

	private

	def sticki_params
		params.require(:sticki).permit(:name, :content, :id)
	end


end
