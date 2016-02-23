class TechnosController < ApplicationController
  def index
    @products = Product.techno.order('id DESC').page(params[:page]).per(9)
  end
  def show
  end
end

