class AddLatitudeAndLongitudeToPessoa < ActiveRecord::Migration
  def change
    add_column :pessoas, :latitude, :float
    add_column :pessoas, :longitude, :float
  end
end
