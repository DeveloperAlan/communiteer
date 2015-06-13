class OppsController < ApplicationController
  def index
    @opps = Opp.all
  end
end
