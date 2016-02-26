class ChatMessagesController < ApplicationController
  # def show
  #   @product = Product.find(params[:product_id])
  #   @chat = Chat.find(params[:chat_id])
  #   @message = Chat_message.new
  # end
  def new
    @product = Product.find(params[:product_id])
    @chat = Chat.find(params[:chat_id])
    @chat_message = ChatMessage.new
  end  
  def create
    @chat_message = ChatMessage.create(create_params)
    redirect_to controller: :chat_messages, action: :new
  end  


 private
  def create_params
    params.require(:chat_message).permit(:message).merge(buyer_id: current_user.id, seller_id: params[:seller_id], product_id: params[:product_id], chat_id: params[:chat_id] )
  end
end
