class ValorFinanciamento < ActiveRecord::Base
  attr_accessible :numeromeses, :taxadejuros, :valordasparcelas

=begin
  Realiza o calculo do financiamento a partir da formula
  Valor Prestação*{[1+(Taxa/100)^Quant.Prestações]-1}/{Taxa/100*[1+(Taxa/100)]^Quant.Prestaçãoes}
=end
  def calcular_financiamento
    @valor_financiar = valordasparcelas.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d * ((1 + (taxadejuros/100))**numeromeses - 1)/(taxadejuros/100*(1+(taxadejuros/100))**numeromeses)
  end

  def calcular_valor_presente
    @valor_presente = @valor_financiar / ((1 + (taxadejuros/100))** numeromeses)
  end

  def calcula_porcentagem
    porcentagem = 100 - ((@valor_presente/@valor_financiar) * 100)
  end

end
