=begin
if Rails.env.production?
	ENV['LINK_MAIN'] = 'http://139.59.63.120'
	ENV['LINK_PYTHON'] = 'http://139.59.34.164'
else
=end

	ENV['LINK_MAIN'] = 'http://localhost:3000'
	ENV['LINK_PYTHON'] = 'http://0.0.0.0:33507'


