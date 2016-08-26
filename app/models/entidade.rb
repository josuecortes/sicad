class Entidade < ActiveRecord::Base

	has_many :users, dependent: :restrict_with_error
	has_many :agendas, dependent: :restrict_with_error
	has_many :imovels, dependent: :restrict_with_error
	has_many :pessoas, dependent: :restrict_with_error
	has_many :veiculos, dependent: :restrict_with_error

	validates_presence_of :nome, :data_criacao, :codigo
	validates_uniqueness_of :nome, :codigo

	before_save :maiusculas_sem_acentos

	def maiusculas_sem_acentos

		self.nome = ActiveSupport::Inflector.transliterate(self.nome).upcase if !self.nome.blank?  
		self.codigo = ActiveSupport::Inflector.transliterate(self.codigo).upcase if !self.codigo.blank?  

	end

end
