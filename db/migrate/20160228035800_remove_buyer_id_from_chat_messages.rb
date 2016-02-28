class RemoveBuyerIdFromChatMessages < ActiveRecord::Migration
  def change
    remove_column :chat_messages, :buyer_id, :integer
    remove_column :chat_messages, :seller_id, :integer
  end
end
