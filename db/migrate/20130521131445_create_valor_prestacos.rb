class CreateValorPrestacos < ActiveRecord::Migration
  def change
    create_table :valor_prestacos do |t|
      t.integer  :numeromeses
      t.decimal  :taxajuros
      t.decimal  :valorfinanciado

      t.timestamps
    end
  end
end