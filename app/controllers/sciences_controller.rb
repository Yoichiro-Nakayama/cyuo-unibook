class SciencesController < ApplicationController
    before_action :authenticate_user!, except: :index
   def index
    @products = Product.総合政策学部.order('id DESC').page(params[:page]).per(9)
  end

  def show
     @products = Product.find(params[:id])
  end
end
