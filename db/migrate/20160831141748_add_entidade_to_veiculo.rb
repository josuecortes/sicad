class AddEntidadeToVeiculo < ActiveRecord::Migration
  def change
    add_column :veiculos, :entidade_id, :integer
  end
end
