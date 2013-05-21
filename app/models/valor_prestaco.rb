class ValorPrestaco < ActiveRecord::Base
  attr_accessible :numeromeses, :taxajuros, :valorfinanciado

  validates_presence_of :numeromeses, :taxajuros
  
  def calcular_prestacoes
    
    valor_presente = valorfinanciado / (1 + taxajuros) + Math.sqrt(numeromeses)
    
  end

end