class CreateChatMessages < ActiveRecord::Migration
  def change
    create_table :chat_messages do |t|
      t.text       :message
      t.integer    :buyer_id
      t.integer    :seller_id
      t.integer    :chat_id

      t.timestamps 
    end
  end
end
