class TaxaDeJurosController < ApplicationController

  # GET /taxa_de_juros/new
  # GET /taxa_de_juros/new.json
  def new
    @taxa_de_juro = TaxaDeJuro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taxa_de_juro }
    end
  end

  # POST /taxa_de_juros
  # POST /taxa_de_juros.json
  def create
    @taxa_de_juro = TaxaDeJuro.new(params[:taxa_de_juro])

    @valor_juros = @taxa_de_juro.calcular_taxa_juros

    respond_to do |format|
      format.html { render action: "new" }
      format.json { render json: @taxa_de_juro, status: :created, location: @taxa_de_juro }
    end
  end

end
