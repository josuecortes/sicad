class AddAssuntoToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :assunto, :string
  end
end
