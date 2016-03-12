class UserMailer < ApplicationMailer



 def complete_review(user, product, chat)
    @user = user
    @chat = chat
    @product = product
    mail to: user.email, subject: "取引相手からメッセージがきました。UNIBOOK"
  end
 
end

