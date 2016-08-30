class RemoveCidadeToPessoa < ActiveRecord::Migration
  def change
  	remove_column :pessoas, :cidade 
  end
end
