class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'https://www.appacademy.io'
    mail(to: 'whoever@gmail.com', subject: 'Welcome to a/A')
  end
end
