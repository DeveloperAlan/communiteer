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

  # GET /posts/1/edit
  def edit
  end

  # PATCH/PUT /opps/1
  # PATCH/PUT /opps/1.json
  def update
    respond_to do |format|
      if @opp.update(opp_params)
        format.html { redirect_to @opp, notice: 'Opportunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @opp }
      else
        format.html { render :edit }
        format.json { render json: @opp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opps/1
  # DELETE /opps/1.json
  def destroy
    @opp.destroy
    respond_to do |format|
      format.html { redirect_to opps_url, notice: 'Opportunity was successfully destroyed.' }
      format.json { head :no_content }
    end
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
