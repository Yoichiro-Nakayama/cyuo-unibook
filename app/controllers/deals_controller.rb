class DealsController < ApplicationController
  def show
    @chats_contents = Chat.where(["buyer_id = ? or seller_id = ?", current_user.id, current_user.id]).order('created_at DESC')
    @products = @chats_contents.product
  end
  def destroy
    @chat = Chat.find(params[:id])
    if @chat.buyer_id == current_user.id || @chat.seller_id == current_user.id
           @chat.destroy
           
    end
    redirect_to controller: :deals, action: :show
  end
end
