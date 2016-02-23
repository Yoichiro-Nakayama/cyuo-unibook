class LawsController < ApplicationController
  def index
    @products = Product.low.order('id ASC').limit(9)
  end

  def show
  end
end
