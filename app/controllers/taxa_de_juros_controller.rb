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

    respond_to do |format|
      if @taxa_de_juro.save
        format.html { redirect_to @taxa_de_juro, notice: 'Taxa de juro was successfully created.' }
        format.json { render json: @taxa_de_juro, status: :created, location: @taxa_de_juro }
      else
        format.html { render action: "new" }
        format.json { render json: @taxa_de_juro.errors, status: :unprocessable_entity }
      end
    end
  end

end
