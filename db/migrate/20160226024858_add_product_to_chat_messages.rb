class AddProductToChatMessages < ActiveRecord::Migration
  def change
     add_column :chat_messages,  :product_id, :integer
  end
end
