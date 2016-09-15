class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nascimento, :date
    add_column :users, :sexo, :string
    add_column :users, :logradouro, :string
    add_column :users, :numero, :string
    add_column :users, :bairro_id, :integer
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :contato, :string
    add_column :users, :confirmado, :boolean, :default=>false
  end
end
