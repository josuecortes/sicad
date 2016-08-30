class RemoveCidadeIdToVarios < ActiveRecord::Migration
  def change
  	remove_column :pessoas, :cidade_id 
  	remove_column :users, :cidade_id 
  end
end
