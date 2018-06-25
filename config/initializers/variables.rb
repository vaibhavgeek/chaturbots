
if Rails.env.production?
	ENV['LINK_MAIN'] = 'https://chaturbots.com'
	ENV['LINK_PYTHON'] = 'http://35.196.230.214'
else
	ENV['LINK_MAIN'] = 'http://localhost:3000'
	ENV['LINK_PYTHON'] = 'http://35.196.230.214'
end


