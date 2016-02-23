class CommercesController < ApplicationController
  def index
    @products = Product.commerce.order('id DESC').page(params[:page]).per(9)
  end

  def show
  end
end
