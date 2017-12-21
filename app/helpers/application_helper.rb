module ApplicationHelper
	


  def proper_url_link(url_link)
  unless url_link.blank?
   url_link.gsub( %r{(http|https)://[^\s<]+} ) do |url|
      if url[/(?:png|jpe?g|gif|svg)$/]
        "<img src='#{url}' />"
      else
        "<a href='#{url}' target='_blank'>#{url}</a> "
      end
    end
  end
end

def proper_html(html_format)
  unless html_format.blank?
    html_format.html_safe
  end
end

def resource_name
    :user
  end

  def resource
    @user ||= User.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  
end
