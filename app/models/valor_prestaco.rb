class ValorPrestaco < ActiveRecord::Base

  attr_accessible :numeromeses, :taxajuros, :valorfinanciado, :valordaprestacao
  def calcular_prestacoes
    valor_presente = valorfinanciado * (taxajuros/100*(1+(taxajuros/100))**numeromeses)/((1+(taxajuros/100)**numeromeses) - 1)

  end

end