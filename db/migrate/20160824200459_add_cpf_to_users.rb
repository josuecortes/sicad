class AddCpfToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cpf, :string
    add_column :users, :superior_id, :integer
    add_column :users, :entidade_id, :integer
    add_column :users, :tipo, :string
  end
end
