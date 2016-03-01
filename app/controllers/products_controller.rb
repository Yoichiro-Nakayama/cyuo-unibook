class ProductsController < ApplicationController
  before_action :authenticate_user!, only: :new
  def index
    @products = current_user.products.order('id DESC').page(params[:page]).per(9)
  end  
  def new
    @product = Product.new
  end
  def create
    @product = Product.create(create_params)
  end
  def edit
     @product = Product.find(params[:id])
  end
  
  def update
     @product = Product.find(params[:id])
    @product.update(update_params)
    redirect_to action: :index
  end

  def destroy
    @product = Product.find(params[:id])
    @chats = Chat.where(product_id: params[:id])

    @chat_messages = ChatMessage.where(product_id: params[:id])

      if @product.user_id == current_user.id
         @product.destroy
      end
      if @product.user_id == current_user.id && @chats.exists? 
          @chats.each do |chat| 
          chat.destroy
          end 
      end
      if   @product.user_id == current_user.id && @chat_messages.exists?
         @chat_messages.each do |chat_message|
         chat_message.destroy
         end
      end
       redirect_to controller: :products, action: :index
  end


  def search
 
      @products = Product.where('text_name LIKE(?)', "%#{params[:q]}%").order('id DESC').limit(16).page(params[:page]).per(9)
  end

  private
  def create_params
     params.require(:product).permit(:image_url, :price, :detail, :professor, :faculty, :text_name, :sent_price, :sent_method, :univercity).merge(user_id: current_user.id)

  end


  def update_params
    params.require(:product).permit(:image_url, :price, :detail, :professor, :faculty, :text_name, :sent_price, :sent_method, :univercity).merge(user_id: current_user.id)
  end

end

