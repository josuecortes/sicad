class AddDataHoraToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :data_hora, :datetime
  end
end
