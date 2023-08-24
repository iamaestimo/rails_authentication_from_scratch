class UserMailer < ApplicationMailer

  def confirmation(user, confirmation_token)
    @user = user
    @confirmation_token = confirmation_token

    mail to: @user.email, subject: "Confirm your account"
  end
end
