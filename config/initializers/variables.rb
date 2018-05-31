
if Rails.env.production?
	ENV['LINK_MAIN'] = 'http://www.chaturbots.com'
	ENV['LINK_PYTHON'] = 'http://35.196.230.214'
else
	ENV['LINK_MAIN'] = 'http://localhost:3000'
	#ENV['LINK_PYTHON'] = 'http://api.chaturbots.com'
	ENV['LINK_PYTHON'] = 'http://0.0.0.0:33507'
end


