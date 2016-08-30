class AddUserToImoveis < ActiveRecord::Migration
  def change
    add_column :imoveis, :user_id, :integer
  end
end
