class ApplicationMailer < ActionMailer::Base
  default from: 'kinyua@liulo.org ',to: "info@mjenzi.com"
  layout 'mailer'

  def contact_message(contact_params)
    @name = contact_params[:name]
    @email = contact_params[:email]
    @subject = contact_params[:subject]
    @message = contact_params[:message]

    mail(subject: "Contact query from website")
  end
end
