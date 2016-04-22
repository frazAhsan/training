class UserMailer < ApplicationMailer
  default from: "admin@cca.com"

  def send_email(user, password)
    @user = user
    @password = password
    mail(to: "#{user.email},fraz.ahsan@phaedrasolutions.com", subject: 'Account Created')
  end
end
