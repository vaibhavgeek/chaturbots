class ContactusMailer < ApplicationMailer
	default from: "vaibhav@chaturbots.com"
 def sample_email(body_details)
 	@body_details = body_details
    mail(to: 'cool@chaturbots.com', subject: 'Website New Message')
  end
end
