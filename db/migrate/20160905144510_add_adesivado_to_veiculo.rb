class AddAdesivadoToVeiculo < ActiveRecord::Migration
  def change
    add_column :veiculos, :adesivado, :boolean, :default => false
  end
end
