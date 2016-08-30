class RemoveBairroToPessoa < ActiveRecord::Migration
  def change
  	remove_column :pessoas, :bairro 
  end
end
