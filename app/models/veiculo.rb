class Veiculo < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :proprietário,:contato
end
