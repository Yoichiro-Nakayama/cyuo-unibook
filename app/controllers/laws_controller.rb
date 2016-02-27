class LawsController < ApplicationController
    before_action :authenticate_user!, except: :index
  def index
    @products = Product.法学部.order('id DESC').page(params[:page]).per(9)
  end

  def show
    @product = Product.find(params[:id])
  end
end

