class CreateEntidades < ActiveRecord::Migration
  def change
    create_table :entidades do |t|
      t.string :nome
      t.date :data_criacao
      t.string :codigo

      t.timestamps null: false
    end
  end
end
