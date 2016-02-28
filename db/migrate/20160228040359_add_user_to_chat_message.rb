class AddUserToChatMessage < ActiveRecord::Migration
  def change
    add_column :chat_messages,  :user_id, :integer
  end
end
