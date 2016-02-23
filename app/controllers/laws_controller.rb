class LawsController < ApplicationController
  def index
    @products = Product.low.order('id DESC').page(params[:page]).per(9)
  end

  def show
  end
end

