class QuantidadeDeMese < ActiveRecord::Base
  attr_accessible :jurosmensal, :valorfinanciado, :valorprestacao
  
  
  def calcular_qtade_meses
       valor_prestacao = (valorfinanciado * (jurosmensal/100*(1+((jurosmensal/100)**valorprestacao))))/((1+((jurosmensal/100)**valorprestacao)) - 1)
   
     end
  
end
