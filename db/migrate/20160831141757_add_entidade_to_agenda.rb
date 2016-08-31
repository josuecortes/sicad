class AddEntidadeToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :entidade_id, :integer
  end
end
