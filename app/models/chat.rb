class Chat < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_many :chat_messages
end
