class Agenda < ActiveRecord::Base
    belongs_to :user
    belongs_to :entidade
    # validates_date :data
    # validates_time :hora

    validates_presence_of :assunto, :data_hora, :contato, :endereco, :user_id, :entidade_id

    scope :da_entidade, ->(ent) { where("entidade_id = ?", ent) }

    before_save :maiusculas_sem_acentos

	  def maiusculas_sem_acentos

			self.assunto = ActiveSupport::Inflector.transliterate(self.assunto).upcase if !self.assunto.blank?  
			self.endereco = ActiveSupport::Inflector.transliterate(self.endereco).upcase if !self.endereco.blank?  

		end 


end
