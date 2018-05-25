class Task < ApplicationRecord
	has_one :project
	has_many :tasks
	has_many :tasks_tags
	has_many :tags, through: :tasks_tags

	def projecttasks
		tasks.where(project_id: @project.id)
	end
end
