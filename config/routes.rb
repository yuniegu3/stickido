Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ask if we are using devise
	resources :projects do
	resources :tasks
	#example of what this route will give us
	#project/:id
	#project/new etc
	#project/:id/tasks/:id

	end
end

# 	project_tasks GET    /projects/:project_id/tasks(.:format)          tasks#index
#                   POST   /projects/:project_id/tasks(.:format)          tasks#create
#  new_project_task GET    /projects/:project_id/tasks/new(.:format)      tasks#new
# edit_project_task GET    /projects/:project_id/tasks/:id/edit(.:format) tasks#edit
#      project_task GET    /projects/:project_id/tasks/:id(.:format)      tasks#show
#                   PATCH  /projects/:project_id/tasks/:id(.:format)      tasks#update
#                   PUT    /projects/:project_id/tasks/:id(.:format)      tasks#update
#                   DELETE /projects/:project_id/tasks/:id(.:format)      tasks#destroy
#          projects GET    /projects(.:format)                            projects#index
#                   POST   /projects(.:format)                            projects#create
#       new_project GET    /projects/new(.:format)                        projects#new
#      edit_project GET    /projects/:id/edit(.:format)                   projects#edit
#           project GET    /projects/:id(.:format)                        projects#show
#                   PATCH  /projects/:id(.:format)                        projects#update
#                   PUT    /projects/:id(.:format)                        projects#update
#                   DELETE /projects/:id(.:format)                        projects#destroy