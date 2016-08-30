class AddLatitudeAndLongitudeToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :latitude, :float
    add_column :agendas, :longitude, :float
  end
end
