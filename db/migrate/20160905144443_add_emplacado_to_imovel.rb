class AddEmplacadoToImovel < ActiveRecord::Migration
  def change
    add_column :imoveis, :emplacado, :boolean, :default => false
  end
end
