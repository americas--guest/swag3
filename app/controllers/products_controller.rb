class ProductsController < ApplicationController
	before_filter :authorize

	def index
		@products = Product.order(updated_at: :desc)
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product, notice: 'Your product is for sale!'
		else
			render "new"
		end
	end

	private
	def product_params
		params.require(:product).permit(:brand_ids => [])
	end
end
