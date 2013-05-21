class ValorFinanciamentosController < ApplicationController

  # GET /valor_financiamentos/new
  # GET /valor_financiamentos/new.json
  def new
    @valor_financiamento = ValorFinanciamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @valor_financiamento }
    end
  end

  # POST /valor_financiamentos
  # POST /valor_financiamentos.json
  def create
    @valor_financiamento = ValorFinanciamento.new(params[:valor_financiamento])

  end
end