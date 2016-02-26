class Product < ActiveRecord::Base
  belongs_to :user
  has_many :chats

  enum faculty: { 法学部: 0, 商学部: 1, 経済学部: 2, 文学部: 3, 総合政策学部: 4, 理工学部: 5}
  validates_presence_of :text_name, :image_url, :price, :detail
 # attr_accessible :image_url
  has_attached_file :image_url, styles: { medium: "300x300>", thumb: "100x100>" }
  # , default_url: "/system/missing/:style/missing.jpg"
 validates_attachment_content_type :image_url, content_type: ["image/jpg","image/jpeg","image/png"]
  # validates_attachment :image_url, content_type: ["image/jpg","image/jpeg","image/png"]
  # presence: true,
  #   content_type: { content_type: ["image/jpg", "image/png"] },
  #   size: { less_than: 2.megabytes }
  # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  # validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]
  # validates :text_name, presence: true
  # validates :text_name, presence: true
  # validate :add_error_sample
  #   def add_error_sample
  #     nameが空のときにエラーメッセージを追加する
  #     if text_name.empty?
  #       errors.add(:text_name, "に関係するエラーを追加")
  #       errors[:base] << "モデル全体に関係するエラーを追加"
  #     end
  # validates_presence_of :text_name, :message => "モデル全体に関係するエラーを追加"
  #   end
# validates_acceptance_of :terms_of_service
#  validates_acceptance_of :text_name, message: '記入してください'

end


