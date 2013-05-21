class CreateQuantidadeDeMeses < ActiveRecord::Migration
  def change
    create_table :quantidade_de_meses do |t|
      t.decimal :jurosmensal
      t.decimal :valorprestacao
      t.decimal :valorfinanciado

      t.timestamps
    end
  end
end
