class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome
      t.integer :numero_total

      t.timestamps null: false
    end
  end
end
