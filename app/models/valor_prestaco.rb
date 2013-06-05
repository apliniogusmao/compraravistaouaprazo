class ValorPrestaco < ActiveRecord::Base

  attr_accessible :numeromeses, :taxajuros, :valorfinanciado, :valordaprestacao

=begin
  Realiza o calculo da prestação a partir da formula
  Valor Financiamento*{Taxa/100*[1+(Taxa/100)]^Quant.Prestaçãoes}/{[1+(Taxa/100)^Quant Prestações]-1}
=end
  def calcular_prestacoes
    valor_prestacao = valorfinanciado.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d * ((taxajuros/100)*((1+(taxajuros/100))**numeromeses))/((1+(taxajuros/100))**numeromeses - 1)
  end

  def calcular_valor_presente
    @valor_presente = valorfinanciado.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d / ((1 + taxajuros)** numeromeses)
  end

  def calcula_porcentagem
    porcentagem = 100% -((@valor_presente/valorfinanciado.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d) *100)
  end

end