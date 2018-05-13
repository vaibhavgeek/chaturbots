
if Rails.env.production?
	ENV['LINK_MAIN'] = 'http://www.chaturbots.com'
	ENV['LINK_PYTHON'] = 'http://api.chaturbots.com'
else
	ENV['LINK_MAIN'] = 'http://localhost:3000'
	#ENV['LINK_PYTHON'] = 'http://api.chaturbots.com'
	ENV['LINK_PYTHON'] = 'http://0.0.0.0:33507'
end
