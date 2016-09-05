class Veiculo < ActiveRecord::Base

		belongs_to :entidade
    belongs_to :user
    
    validates_presence_of :proprietario, :contato, :entidade_id, :user_id, :tipo

    scope :da_entidade, ->(id) { where("entidade_id = ?", id) }   

  	scope :do_usuario, ->(id) { where("user_id = ?", id) }   

  	scope :do_tipo, ->(tipo) { where("tipo = ?", tipo) }  

  	before_save :maiusculas_sem_acentos

	  def maiusculas_sem_acentos

			self.proprietario = ActiveSupport::Inflector.transliterate(self.proprietario).upcase if !self.proprietario.blank?  
			self.placa = ActiveSupport::Inflector.transliterate(self.placa).upcase if !self.placa.blank?  

		end 
end
