class Product < ActiveRecord::Base
	belongs_to :brand

	validates :brand, presence => true
end
