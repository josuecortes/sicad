class AddEntidadeToImovel < ActiveRecord::Migration
  def change
    add_column :imoveis, :entidade_id, :integer
  end
end
