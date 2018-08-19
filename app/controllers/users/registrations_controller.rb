class Users::RegistrationsController < Devise::RegistrationsController
   before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  layout "signup"

  # GET /resource/sign_up
   def new
   	 if request.params[:id]	
     	hashids = Hashids.new("i love this life")
      @main_id = hashids.decode(request.params[:id])
      @email_id = request.params[:email]
      super
   	 else
   	 	redirect_to new_organisation_path
   	 end
   end

  # POST /resource
   def create
     
     build_resource(sign_up_params)
     Razorpay.setup('rzp_test_3fUWG9VF6LL7hP', 'n7uRrF4eeQ0XFEBPlcLpHEdz')
     subscription = Razorpay::Subscription.create plan_id: 'plan_AUjWN5NDBmG4Hn' , start_at: (Time.now + (60 * 60 * 24 * 15)).to_i, total_count: 1
     resource.subscription_id = subscription.attributes["id"]
     resource.plan_id = subscription.attributes["plan_id"]
     resource.status = subscription.attributes["status"]
     resource.quantity = subscription.attributes["quantity"]
     resource.start_at = subscription.attributes["start_at"]
     resource.end_at = subscription.attributes["end_at"]
     resource.charge_at = subscription.attributes["charge_at"]
     resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)

        respond_with resource , location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      redirect_to new_user_registration_path(:email => resource.email , :id => crypted_id(resource.organisation_id))
    end

   end


 def crypted_id(string)
    hashids = Hashids.new("i love this life")
    return hashids.encode(string)
  end

  def decrypted_id(string)
    hashids = Hashids.new("i love this life")
    return hashids.decode(string)
  end
  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected
  protected

   

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:organisation_id , :password_confirmation , :organisation_admin , :name, :email, :password) }

   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end
  def after_sign_up_path_for(resource)
    session[:orga_id] = resource.organisation_id
    user_steps_path(resource)
  end
  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
