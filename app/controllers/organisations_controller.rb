class OrganisationsController < ApplicationController
before_action :find_organisation, only: [:show]
  def new 
    @organisation = Organisation.new 
  end 

  def create
    @organisation = Organisation.new(organisation_params)

    if @organisation.save
      redirect_to @organisation
    else 
      render :new
    end
  end

  def show 
  end 

private 

def find_organisation
  @organisation = Organisation.find(params[:id])
end

def organisation_params
  params.require(:organisation).permit(
    :name, 
    :description,
    :image
    )
end
end

