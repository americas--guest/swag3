class WelcomeController < ApplicationController
  def index
  	@brands = Brand.order(updated_at: :desc)
  end
end
