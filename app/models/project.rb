class Project < ApplicationRecord
	has_many :tasks
	has_one :user
end
