class Imovel < ActiveRecord::Base
    belongs_to :user
    belongs_to :bairro

    validates_presence_of :tipo, :logradouro, :numero, :bairro_id

    attr_accessor :address

	  after_validation :endereco

	  def endereco
	  	if !self.bairro.blank?
	    	self.address = "#{self.bairro.cidade.nome}, #{self.logradouro}, #{self.numero}"
	    end
	  end

	  geocoded_by :address
	  after_validation :geocode     

	  before_save :maiusculas_sem_acentos

	  def maiusculas_sem_acentos

			self.logradouro = ActiveSupport::Inflector.transliterate(self.logradouro).upcase if !self.logradouro.blank?  
			self.proprietario = ActiveSupport::Inflector.transliterate(self.proprietario).upcase if !self.proprietario.blank?  

		end 

end
