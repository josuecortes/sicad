class AddProprietarioToImoveis < ActiveRecord::Migration
  def change
    add_column :imoveis, :proprietario, :string
  end
end
