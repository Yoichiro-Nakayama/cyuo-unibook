class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text       :message
      t.integer    :buyer_id
      t.integer    :seller_id

      t.timestamps 
    end
  end
end
