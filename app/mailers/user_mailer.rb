class UserMailer < ApplicationMailer



 def complete_review(user)
    @user = user
    mail to: user.email, subject: "取引相手からメッセージがきました。UNIBOOK"
  end
 
end

