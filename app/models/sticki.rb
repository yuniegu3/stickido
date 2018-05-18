class Sticki < ApplicationRecord
	has_many :stickis_tags
	has_many :tags, through: :stickis_tags
end
