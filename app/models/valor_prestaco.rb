class ValorPrestaco < ActiveRecord::Base

  attr_accessible :numeromeses, :taxajuros, :valorfinanciado, :valordaprestacao
  def calcular_prestacoes

    valor_presente = valorfinanciado / ((1 + taxajuros) ** numeromeses)

  end

end