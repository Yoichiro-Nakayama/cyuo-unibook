class ChatMessage < ActiveRecord::Base
  belongs_to :chat
  # belongs_to :user_id, :class_name => 'User', :foreign_key => 'user_id'  
 belongs_to :user
end


