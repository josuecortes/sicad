class Agenda < ActiveRecord::Base
    belongs_to :user
    belongs_to :entidade
    # validates_date :data
    # validates_time :hora

    scope :da_entidade, ->(ent) { where("entidade_id = ?", ent) }


end
