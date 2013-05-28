class QuantidadeDeMesesController < ApplicationController

  # GET /quantidade_de_meses/new
  # GET /quantidade_de_meses/new.json
  def new
    @quantidade_de_mese = QuantidadeDeMese.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quantidade_de_mese }
    end
  end

  # POST /quantidade_de_meses
  # POST /quantidade_de_meses.json
  def create
    @quantidade_de_mese = QuantidadeDeMese.new(params[:quantidade_de_mese])
  
    @quantidade_meses =   @quantidade_de_mese.calcular_qtade_meses
    
    respond_to do |format|
         format.html { render action: "new" }
         format.json { render json: @quantidade_de_mese, status: :created, location: @quantidade_de_mese }
       end
      
  end
end