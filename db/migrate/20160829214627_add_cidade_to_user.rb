class AddCidadeToUser < ActiveRecord::Migration
  def change
    add_column :users, :cidade_id, :integer
  end
end
