class Product < ActiveRecord::Base
  belongs_to :user
  enum faculty: { low: 0, commerce: 1, economicse: 2, literature: 3, science: 4, techno: 5}

  validates_presence_of :text_name, :image_url, :price, :detail

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

