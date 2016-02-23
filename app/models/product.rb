class Product < ActiveRecord::Base
  belongs_to :user
  enum faculty: { low: 0, commerce: 1, economicse: 2, literature: 3, science: 4, techno: 5}
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