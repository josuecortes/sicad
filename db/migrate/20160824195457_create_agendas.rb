class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :data
      t.string :hora
      t.string :responsavel
      t.string :contato
      t.string :endereco

      t.timestamps null: false
    end
  end
end
