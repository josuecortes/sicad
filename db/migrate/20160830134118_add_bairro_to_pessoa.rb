class AddBairroToPessoa < ActiveRecord::Migration
  def change
    add_column :pessoas, :bairro_id, :integer
  end
end
