class AddLatitudeAndLongitudeToImovel < ActiveRecord::Migration
  def change
    add_column :imoveis, :latitude, :float
    add_column :imoveis, :longitude, :float
  end
end
