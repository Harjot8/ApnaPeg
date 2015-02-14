class Article < ActiveRecord::Base
	validates :title, :description, :information, presence: true
	validates :title, uniqueness: true

	validates :title, length: {minimum: 3, maximum: 100}
	validates :description, length: {minimum: 3, maximum: 150}
end
