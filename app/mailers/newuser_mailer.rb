class NewuserMailer < ApplicationMailer
  def user_mail(user)
    @user = user
    mail to :"@user.email", subject: "新規登録の確認メール"
  end
end
