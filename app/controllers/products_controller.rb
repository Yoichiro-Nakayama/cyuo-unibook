class ProductsController < ApplicationController
  def show

  end

  def new
  @product = Product.new

  end

  def create
    @product = Product.create(create_params)

    # redirect_to controller: :top, action: :index
  end


  def edit
  end

  def updates
  end

  private
  def create_params
     params.require(:product).permit(:image_url, :price, :detail, :professor, :faculty, :text_name, :sent_price, :sent_method).merge(user_id: current_user.id)

  end

end
