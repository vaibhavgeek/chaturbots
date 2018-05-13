#Warden::Manager.after_set_user do |user,auth,opts|
#  scope = opts[:scope]
#  auth.cookies.signed["#{scope}.id"] = user.id
#  puts scope
#  puts opts
#  puts user.email
#  puts auth
#end