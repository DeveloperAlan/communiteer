class OrganisationsController < ApplicationController
before_action :find_organisation, only: [:show, :edit, :update, :destroy]
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

  def edit
  end 

  def update
    if @organisation.update(organisation_params)
      redirect_to @organisation
    else 
      render :edit
    end 
  end 

  def destroy 
    @organisation.destroy
    redirect_to root_path
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

