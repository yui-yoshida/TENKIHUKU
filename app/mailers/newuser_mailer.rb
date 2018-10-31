class NewuserMailer < ApplicationMailer
  def hello(user)
    @user = user
    mail to: @user.email , subject: 'こんにちは'
  end
end
