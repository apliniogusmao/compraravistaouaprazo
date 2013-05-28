class TaxaDeJuro < ActiveRecord::Base
  attr_accessible :quantidademeses, :valordaparcela, :valordofinanciamento
  
  
  def calcular_taxa_juros
       valor_juros = (valordofinanciamento * (valordofinanciamento/100*(1+((valordofinanciamento/100)**quantidademeses))))/((1+((valordofinanciamento/100)**quantidademeses)) - 1)
   
     end
  
end
