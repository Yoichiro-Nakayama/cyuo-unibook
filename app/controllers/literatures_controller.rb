class LiteraturesController < ApplicationController
  def index
    @products = Product.literature.order('id DESC').page(params[:page]).per(9)
  end

  def show
  end
end
