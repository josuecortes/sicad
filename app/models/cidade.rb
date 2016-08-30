class Cidade < ActiveRecord::Base
	has_many :pessoas
	has_many :entidades
	has_many :users
	
	validates_presence_of :nome, :quantidade_total

end
