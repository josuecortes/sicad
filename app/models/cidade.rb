class Cidade < ActiveRecord::Base
	
	
	has_many :entidades
	has_many :bairros
	
	validates_presence_of :nome, :numero_total

end
