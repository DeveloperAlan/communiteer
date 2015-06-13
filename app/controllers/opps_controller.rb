class OppsController < ApplicationController
  before_action :set_opp, only: [:show, :edit, :update, :destroy]


  def index
    @opps = Opp.all
  end

  def show
  end

  def new
    @opp = Opp.new
  end

  def create
    @opp = Opp.new(opp_params)

    respond_to do |format|
      if @opp.save
        format.html { redirect_to @opp, notice: 'Opportunity was successfully created.' }
        format.json { render :show, status: :created, location: @opp }
      else
        format.html { render :new }
        format.json { render json: @opp.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_opp
      @opp = Opp.find(params[:id])
    end

    def opp_params
      params.require(:opp).permit(:name, :description)
    end
end
