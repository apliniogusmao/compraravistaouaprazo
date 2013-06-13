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

  def create

    @valor_prestaco = ValorPrestaco.new(params[:valor_prestaco])

    @valor_prestacao = @valor_prestaco.calcular_prestacoes
    @valor_presente = @valor_prestaco.calcular_valor_presente
    @porcentagem = @valor_prestaco.calcula_porcentagem

    respond_to do |format|
      format.html { render action: "new" }
    end
  end
end