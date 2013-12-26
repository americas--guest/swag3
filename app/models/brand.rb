class Brand < ActiveRecord::Base
	def title 
		read_attribute(:title).last
	end

	validates :title, presence: true
	validates :content, presence: true
	
end
