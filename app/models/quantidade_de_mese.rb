class QuantidadeDeMese < ActiveRecord::Base

  attr_accessible :jurosmensal, :valorfinanciado, :valorprestacao

=begin
  Realizar o calculo da prestação a partir da formula informada
=end
  def calcular_qtade_meses
    qtades_prestacao = Math.log(valorprestacao.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d/(valorprestacao.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d - (valorfinanciado.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d*(jurosmensal/100))))/Math.log(1 + (jurosmensal/100))
    @quantidade = qtades_prestacao

    return qtades_prestacao;
  end

  def calcular_valor_presente_q
    @valor_presente = valorfinanciado.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d / ((1 + (jurosmensal/100))** @quantidade)
  end

  def calcula_porcentagem_q
    porcentagem = 100 - ((@valor_presente/valorfinanciado.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d) * 100)
  end

end
