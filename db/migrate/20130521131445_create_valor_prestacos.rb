class CreateValorPrestacos < ActiveRecord::Migration
  def change
    create_table :valor_prestacos do |t|
      t.integer  :numeromeses
      t.decimal  :taxajuros
      t.decimal  :valorfinanciado, :precision => 14, :scale => 2
      t.decimal  :valordaprestacao

      t.timestamps
    end
  end
end
