class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # attr_accessor :nickname
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"},:storage => :s3,
:s3_credentials => "#{Rails.root}/config/s3.yml",
:path => ":attachment/:id/:style.:extension"




  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]


  def authenticated_image_url(style)
    avatar.s3_object(style).url_for(:read, :secure => true)
  end

  has_many :products
  has_many :chats
  has_many :chat_messages
end


