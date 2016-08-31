class Agenda < ActiveRecord::Base
    belongs_to :user
    validates_date :data
    validates_time :hora

    scope :da_entidade, ->(ent) { where("entidade_id = ?", ent) }
end
