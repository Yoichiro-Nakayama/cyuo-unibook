class DealsController < ApplicationController
  def show
    @chats = Chat.where(["buyer_id = ? or seller_id = ?", current_user.id, current_user.id])
    @products = @chats.product
  end  
end
