class AddCidadeRelationToImoveis < ActiveRecord::Migration
  def change
    add_column :imoveis, :bairro_id, :integer
  end
end
