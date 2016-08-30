class Imovel < ActiveRecord::Base
    belongs_to :user
    belongs_to :bairro
    validates_presence_of :tipo,:logradouro,:numero,:bairro_id
end
