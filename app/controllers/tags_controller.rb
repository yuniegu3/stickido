class TagsController < ApplicationController
	before_action :authenticate_user!

#  tags GET    /tags(.:format) tags#index
	def index
		@tags = Tag.all
	end

#         tag GET    /tags/:id(.:format) tags#show
	def show
		@tag = Tag.find(params[:id])
	end

#     new_tag GET    /tags/new(.:format) tags#new
	def new
		Tag.new
	end

#     POST   /tags(.:format) tags#create
	def create
		Tag.create(tag_params)
		redirect_to '/projects/:project_id/tasks'
		# this should go back to the tasks page right? Cuz tags will be shown there
		end

#    edit_tag GET    /tags/:id/edit(.:format) tags#edit
	def edit
		@tag = Tag.find(params[:id])
	end

#             PATCH  /tags/:id(.:format) tags#update
#             PUT    /tags/:id(.:format) tags#update
	def update
		@tag = Tag.find(params[:id])
        @tag.update(tag_params)
		redirect_to '/projects/:project_id/tasks'
		# this should go back to the tasks page right? Cuz tags will be shown there
	end

#             DELETE /tags/:id(.:format) tags#destroy
	def destory
		Tag.find(params[:id]).destroy
		redirect_to '/projects/:project_id/tasks'
	end

	private

	def tag_params
		params.require(:tag).permit(:name)
	end
end

