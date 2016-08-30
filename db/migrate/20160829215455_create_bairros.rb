class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.string :nome
      t.integer :cidade_id

      t.timestamps null: false
    end
  end
end
