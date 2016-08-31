class Bairro < ActiveRecord::Base
	
	belongs_to :cidade
	has_many :pessoas
	validates_presence_of :nome, :cidade_id

	scope :da_cidade, ->(id) { where("cidade_id = ?", id) }  
end
