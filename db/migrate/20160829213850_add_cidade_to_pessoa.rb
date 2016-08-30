class AddCidadeToPessoa < ActiveRecord::Migration
  def change
    add_column :pessoas, :cidade_id, :integer
  end
end
