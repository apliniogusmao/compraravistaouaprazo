class TaxaDeJuro < ActiveRecord::Base
  attr_accessible :quantidademeses, :valordaparcela, :valordofinanciamento
  
  
  def calcular_taxa_juros
       valor_juros = valordaparcela / valordofinanciamento
   
     end
  
end
