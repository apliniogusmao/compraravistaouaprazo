class CreateValorFinanciamentos < ActiveRecord::Migration
  def change
    create_table :valor_financiamentos do |t|
      t.integer  :numeromeses
      t.decimal  :taxadejuros
      t.string  :valordasparcelas

      t.timestamps
    end
  end
end
