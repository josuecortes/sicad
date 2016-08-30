class AddUserIdToVeiculos < ActiveRecord::Migration
  def change
    add_column :veiculos, :user_id, :integer
  end
end
