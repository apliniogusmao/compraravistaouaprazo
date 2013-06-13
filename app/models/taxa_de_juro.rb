class TaxaDeJuro < ActiveRecord::Base
  attr_accessible :quantidademeses, :valordaparcela, :valordofinanciamento

=begin
    Incluir comentário
=end
  def calcular_taxa_juros

    taxa_k = (((valordaparcela.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d*quantidademeses)/valordofinanciamento.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d) ** (2/(quantidademeses + 1).to_s.gsub(/[.]/, '_').to_d)) - 1

    @taxa_calc = (taxa_k * ((12-((quantidademeses-1)*taxa_k))/(12-(2*(quantidademeses-1)*taxa_k)))) * 100

  end

  def calcular_valor_presente
    @valor_presente = valordofinanciamento.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d / ((1 + (@taxa_calc/100))** quantidademeses)
  end

  def calcula_porcentagem
    porcentagem = 100 - ((@valor_presente/valordofinanciamento.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d) * 100)
  end

end
