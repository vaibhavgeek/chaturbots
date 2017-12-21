class OrganisationsController < ApplicationController
  
  before_action :set_organisation, only: [:show, :edit, :update, :destroy]

  def new
  	@organisation = Organisation.new
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
	def set_organisation
      @intent = Intent.find(params[:id])
    end
end
