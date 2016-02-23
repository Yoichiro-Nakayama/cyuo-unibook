class SciencesController < ApplicationController
   def index
    @products = Product.science.order('id DESC').page(params[:page]).per(9)
  end

  def show
  end
end
