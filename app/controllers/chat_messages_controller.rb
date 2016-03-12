class ChatMessagesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @chat = Chat.find(params[:chat_id])
    @chats = ChatMessage.where(chat_id: params[:chat_id]).order('created_at ASC')
    @chat_message = ChatMessage.new
  end  
  def create
    @chat = Chat.find(params[:chat_id])
     if current_user.id == @chat.buyer_id
     @user_id = @chat.seller_id
     else 
     @user_id = @chat.buyer_id
     end
    @user = User.find(@user_id)

    @mail = UserMailer.complete_review(@user)
    @chat_message = ChatMessage.create(create_params)
    @mail.deliver # if Rails.env.production?
    redirect_to controller: :chat_messages, action: :new
  end

 private
  def create_params
    params.require(:chat_message).permit(:message).merge( product_id: params[:product_id], chat_id: params[:chat_id], user_id: current_user.id )
  end
end



    #  @chat = Chat.find(params[:chat_id])
    #  if current_user = @chat.buyer_id
    #  @user = @chat.seller_id
    #  else
    #  @user = @chat.buyer_id
    #  end

    # @mail = UserMailer.complete_review(@user)
    #  @chat_message = ChatMessage.create(create_params)
    # @mail.deliver # if Rails.env.production?
    # redirect_to controller: :chat_messages, action: :new