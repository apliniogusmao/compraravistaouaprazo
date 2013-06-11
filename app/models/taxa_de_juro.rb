class TaxaDeJuro < ActiveRecord::Base
  attr_accessible :quantidademeses, :valordaparcela, :valordofinanciamento

=begin
    Incluir comentário
=end
  def calcular_taxa_juros

    k_ret = (((valordaparcela.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d*quantidademeses)/valordofinanciamento.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d) ** (2/(quantidademeses + 1).to_s.gsub(/[.]/, '_').to_d)) - 1

    taxa_calc = (k_ret * ((12-((quantidademeses-1)*k_ret))/(12-(2*(quantidademeses-1)*k_ret)))) * 100

  end

end
