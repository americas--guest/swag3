class Brand < ActiveRecord::Base
	has_many :products

	validates :title, presence: true
	validates :content, presence: true
	
end
