class ContactMailer < ActionMailer::Base
  
  default to: 'marb61a@fastmail.fm'
  
  def contact_mail(name, email, body) 
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
  
end