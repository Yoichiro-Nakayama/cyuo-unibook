class ChatsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @chat = Chat.new
  end  

  def show
     @product = Product.find(params[:product_id])
  end
  def create

    @product = Product.find(params[:product_id])
  
    if Chat.find_by(seller_id: params[:seller_id], buyer_id: params[:buyer_id]).present?
      @chat = Chat.find_by(seller_id: params[:seller_id], buyer_id: params[:buyer_id])
      redirect_to new_product_chat_chat_message_url(params[:product_id], @chat.id) 
      else
      @chat = Chat.create(create_params)
      redirect_to new_product_chat_chat_message_url(params[:product_id], @chat.id) 
    end
  end  

  private
  def create_params
    params.permit(:buyer_id, :seller_id, :product_id)
  end
end
# .where(buyer_id: current_user.id, seller_id: product.user.id )
# params[:seller_id].to_i == @product.user.id && current_user.id == params[:buyer_id].to_i
# Chat.find_by(seller_id: params[:seller_id], buyer_id: params[:buyer_id]).exists?

