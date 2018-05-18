class Tag < ApplicationRecord
	has_many :tasks_tags
	has_many :tasks, through: :tasks_tags
	has_many :stickis_tags
	has_many :stickis, through: :stickis_tags
end
