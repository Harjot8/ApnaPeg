class Page < ActiveRecord::Base
	validates :name, :descriptiong, presence: true
	validates :name, uniqueness: true

	def slug 
		name.parameterize
	end
end
