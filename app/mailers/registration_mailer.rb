class RegistrationMailer < ApplicationMailer
  default from: 'hamza.naveed@xprolabs.com'
  
  CONTACT_EMAIL = 'hamza.naveed@xprolabs.com'
  def submission(message)
    @message = message
    mail(to: CONTACT_EMAIL, subject: 'New registration page submission')
  end
end
