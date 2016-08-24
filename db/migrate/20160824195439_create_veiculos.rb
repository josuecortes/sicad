class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :tipo
      t.string :placa
      t.string :proprietario
      t.string :contato

      t.timestamps null: false
    end
  end
end
