class VolunteersController < ApplicationController
  def index 
    @organisations = Organisation.order(:name);
  end
end
