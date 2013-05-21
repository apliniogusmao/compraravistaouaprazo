class ValorPrestacosController < ApplicationController
 
  # GET /valor_prestacos/new
  # GET /valor_prestacos/new.json
  def new
    @valor_prestaco = ValorPrestaco.new

    respond_to do |format|
      format.html
      format.json { render json: @valor_prestaco }
    end
  end

  # POST /valor_prestacos
  # POST /valor_prestacos.json
  def create
    
    @valor_prestaco = ValorPrestaco.new(params[:valor_prestaco])

    @valor_presente =  @valor_prestaco.calcular_prestacoes    
      
    respond_to do |format|
      format.html { render action: "new" }
      format.json { render json: @valor_prestaco, status: :created, location: @valor_prestaco }
    end            
  end
end