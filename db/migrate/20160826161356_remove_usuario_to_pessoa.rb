class RemoveUsuarioToPessoa < ActiveRecord::Migration
  def change
  	remove_column :pessoas, :usuario_id 
  end
end
