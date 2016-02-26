class AddIdtoChats < ActiveRecord::Migration
  def change
     add_column :chats,  :product_id, :integer
  end
end
