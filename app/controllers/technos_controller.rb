class TechnosController < ApplicationController
    before_action :authenticate_user!, except: :index
  def index
    @products = Product.その他.order('id DESC').page(params[:page]).per(9)
  end
  def show
    @products = Product.find(params[:id])
  end
end

