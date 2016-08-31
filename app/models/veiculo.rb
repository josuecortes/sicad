class Veiculo < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :proprietário,:contato

    scope :da_entidade, ->(ent) { where("entidade_id = ?", ent) }
end
