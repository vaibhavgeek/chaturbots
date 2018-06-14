class ContactusMailer < ApplicationMailer
	default from: "vaibhavblogger@gmail.com"
 def sample_email(body_details)
 	@body_details = body_details
    mail(to: 'vaibhav@chaturbots.com', subject: 'Website New Message')
  end
end
