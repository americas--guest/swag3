class BrandsController < ApplicationController
	before_filter :authenticate_user!
	def index 
		@brands = Brand.all
	end

	def show
		@brand = Brand.find(params[:id])
	end

	def new
		@brand = Brand.new(brand_params)
	end

	def create
		@brand = Brand.new(brand_params)
		if @brand.save
			redirect_to @brand, notice: 'New Brand is published'
		else
			render "new"
		end
	end

	private 
	def brand_params
		params.require(:brand).permit(:title)
	end

end
