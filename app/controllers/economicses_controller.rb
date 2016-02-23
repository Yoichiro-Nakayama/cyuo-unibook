class EconomicsesController < ApplicationController
  def index
    @products = Product.economicse.order('id DESC').page(params[:page]).per(9)
  end

  def show
  end
end

