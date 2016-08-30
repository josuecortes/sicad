class AddCidadeToEntidade < ActiveRecord::Migration
  def change
    add_column :entidades, :cidade_id, :integer
  end
end
