class AddCamposToUser < ActiveRecord::Migration
  def change
    add_column :users, :ativo, :boolean, default: :true
    add_column :users, :mudar_senha, :boolean, default: :true
  end
end
