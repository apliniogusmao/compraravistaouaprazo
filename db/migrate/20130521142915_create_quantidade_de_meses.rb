class CreateQuantidadeDeMeses < ActiveRecord::Migration
  def change
    create_table :quantidade_de_meses do |t|
      t.decimal :jurosmensal
      t.string :valorprestacao
      t.string :valorfinanciado
      t.timestamps
    end
  end
end