class ValorPrestaco < ActiveRecord::Base

  attr_accessible :numeromeses, :taxajuros, :valorfinanciado, :valordaprestacao

=begin
  Realiza o calculo do financiamento a partir da formula
  Valor Financiamento*{Taxa/100*[1+(Taxa/100)]^Quant.Prestaçãoes}/{[1+(Taxa/100)^Quant Prestações]-1}
=end
  def calcular_prestacoes
        
    valor_prestacao_retorno = valorfinanciado * ((taxajuros/100)*(1+(taxajuros/100)**numeromeses))/(1+(taxajuros/100)**numeromeses - 1)

  end
end