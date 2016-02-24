class TechnosController < ApplicationController
    before_action :authenticate_user!, except: :index
  def index
    @products = Product.理工学部.order('id DESC').page(params[:page]).per(9)
  end
  def show
  end
end

