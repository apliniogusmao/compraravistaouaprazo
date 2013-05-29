class QuantidadeDeMese < ActiveRecord::Base
  attr_accessible :jurosmensal, :valorfinanciado, :valorprestacao

=begin

=end
  def calcular_qtade_meses
    qtades_prestacao = Math.log(valorprestacao/(valorprestacao - (valorfinanciado*(jurosmensal/100))))/Math.log(1 + (jurosmensal/100))

  end

end
