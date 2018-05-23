class Project < ApplicationRecord
	has_many :tasks
	has_many :stickis
	has_one :user
end
