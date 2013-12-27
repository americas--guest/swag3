class Product < ActiveRecord::Base
	belongs_to :brand

	validates :title, presence: true

	
	
end
