class CreateImoveis < ActiveRecord::Migration
  def change
    create_table :imoveis do |t|
      t.string :tipo
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cidade

      t.timestamps null: false
    end
  end
end
