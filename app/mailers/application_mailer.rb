class ApplicationMailer < ActionMailer::Base
  default from: 'info@mjenzi.com',to: "kinyua@mjenzi.com" #to: "info@mjenzi.com"
  layout 'mailer'

  def contact_message(user)
    @user = user
    mail(from: user.email, subject: "Contact message from website form")
  end
end
