class ValorPrestaco < ActiveRecord::Base

  attr_accessible :numeromeses, :taxajuros, :valorfinanciado
  
  def calcular_prestacoes

    valor_presente = valorfinanciado / (1 + taxajuros).sqrt(numeromeses)

  end

end