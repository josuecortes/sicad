class RemoveBairroFromImoveis < ActiveRecord::Migration
  def change
    remove_column :imoveis, :bairro, :string
    remove_column :imoveis, :cidade, :string
  end
end
