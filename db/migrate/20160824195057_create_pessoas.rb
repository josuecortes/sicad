class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :nascimento
      t.string :sexo
      t.string :rg
      t.string :cpf
      t.string :titulo
      t.string :zona
      t.string :secao
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :contato
      t.string :email
      t.integer :entidade_id
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
