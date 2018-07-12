=begin
Warden::Manager.after_set_user do |user, auth, opts|
  scope = opts[:scope]
 # REDIS.set("user_#{user.id}_online" , "1")
  #auth.cookies.signed["#{scope}.id"] = user.id
  #auth.cookies.signed["#{scope}.expires_at"] = 60.minutes.from_now
end

Warden::Manager.before_logout do |user, auth, opts|
  scope = opts[:scope]
 # REDIS.del("user_#{user.id}_online")
  #auth.cookies.signed["#{scope}.id"] = nil
  #auth.cookies.signed["#{scope}.expires_at"] = nil
end
=end