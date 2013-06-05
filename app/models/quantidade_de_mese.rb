class QuantidadeDeMese < ActiveRecord::Base

  attr_accessible :jurosmensal, :valorfinanciado, :valorprestacao

=begin
  Realizar o calculo da prestação a partir da formula informada
=end
  def calcular_qtade_meses

    qtades_prestacao = Math.log(valorprestacao.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d/(valorprestacao.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d - (valorfinanciado.gsub(/[R$]/, ' ').gsub(/[.]/, '_').to_d*(jurosmensal/100))))/Math.log(1 + (jurosmensal/100))

  end

end
