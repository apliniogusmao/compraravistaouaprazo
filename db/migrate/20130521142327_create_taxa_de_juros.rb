class CreateTaxaDeJuros < ActiveRecord::Migration
  def change
    create_table :taxa_de_juros do |t|
      t.decimal :valordofinanciamento
      t.decimal :valordaparcela
      t.integer :quantidademeses

      t.timestamps
    end
  end
end
