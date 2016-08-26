class Pessoa < ActiveRecord::Base

	belongs_to :entidade
	belongs_to :user

	validates_presence_of :nome, :logradouro, :bairro, :sexo, :entidade_id, :user_id, :cidade, :numero
	validates_uniqueness_of :cpf, :if => :checar_cpf
	validates_uniqueness_of :rg, :if => :checar_rg
	validates_uniqueness_of :titulo, :if => :checar_titulo

	before_save :maiusculas_sem_acentos

	def checar_cpf
    if self.cpf.blank?
      return false
    else
      return true
    end
  end

  def checar_rg
    if self.rg.blank?
      return false
    else
      return true
    end
  end

  def checar_titulo
    if self.titulo.blank?
      return false
    else
      return true
    end
  end

	def maiusculas_sem_acentos

		self.nome = ActiveSupport::Inflector.transliterate(self.nome).upcase if !self.nome.blank?  
		self.logradouro = ActiveSupport::Inflector.transliterate(self.logradouro).upcase if !self.logradouro.blank?  

	end

end
