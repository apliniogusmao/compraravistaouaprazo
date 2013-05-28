class ValorFinanciamento < ActiveRecord::Base
  attr_accessible :numeromeses, :taxadejuros, :valordasparcelas

=begin
  Realiza o calculo do financiamento a partir da formula
  Valor Prestação*{[1+(Taxa/100)^Quant.Prestações]-1}/{Taxa/100*[1+(Taxa/100)]^Quant.Prestaçãoes}
=end
  def calcular_financiamento
    valor_financiar = valordasparcelas * ((1 + (taxadejuros/100)**numeromeses) - 1)/(taxadejuros/100*(1 + (taxadejuros/100)**numeromeses))
  end

end
