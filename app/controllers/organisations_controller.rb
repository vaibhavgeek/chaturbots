class OrganisationsController < ApplicationController
  
  before_action :set_organisation, only: [:show, :edit, :destroy]

  def new
  	@organisation = Organisation.new
  end

  def all_organisation_id
    final_json = Organisation.all.pluck(:id)
    end_json = JSON.parse(final_json.to_json.to_s)
    respond_to do |format|
          format.json { render :json =>  JSON.pretty_generate(end_json) }
      end
  end

  def create 
  	@organisation = Organisation.new(organisation_params)
  	respond_to do |format|	
  		if @organisation.save
  			format.html { redirect_to new_user_registration_path(:email => @organisation.admin_email , :id => crypted_id(@organisation.id)) }
  			format.json { render :@organisation}
  		else 
  			format.html { render :new , notice: "Some error ocurred, please try again" }
			format.json { render json: @organisation.errors, status: :unprocessable_entity}
  		end
  	end
  end


  def edit
  end

  def show
  end

  def update
    @organisation = Organisation.find(params[:id])
    respond_to do |format|
      if @organisation.update(update_org_params)
        format.html { redirect_to settings_account_organisation_url(@organisation) , notice_error: "Update Organisation Sucessfully"}
        format.json { render :show, status: :ok , location: @organisation}
      else
        format.html { redirect_to settings_account_organisation_url(@organisation) , notice_error: "Some Errors Occured in Updating Organisation" }
        format.json { render json: @organisation.errors, status: :unprocessable_entity}
      end
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

  private 

	def organisation_params
		params.require(:organisation).permit(:name, :website ,:admin_email) 
	end

  def update_org_params
    params.require(:organisation).permit(:name, :avatar_icon)
  end

	def set_organisation
    @intent = Intent.find(params[:id])
  end

end
