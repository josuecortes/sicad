class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  self.table_name = "users"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :da_entidade, ->(ent) { where("entidade_id = ?", ent) }

  belongs_to :entidade
  belongs_to :superior, class_name: "User"
  belongs_to :bairro
  has_many :pessoas, dependent: :restrict_with_error

  validates_presence_of :tipo, :name, :email
  validates_presence_of :entidade_id, :if => :checar_tipo
  validates_presence_of :superior_id, :if => :checar_tipo2

  validates_presence_of :nascimento, :sexo, :contato, :logradouro, :numero, :bairro_id, :if => :checar_tipo3

  attr_accessor :superior_nome
  
  def checar_tipo
  	if self.tipo == "MASTER"
      return false
    else
      return true
    end
  end

  def checar_tipo2
    if self.tipo == "MASTER" or self.tipo == "ADMINISTRADOR"
      return false
    else
      return true
    end
  end

  def checar_tipo3
    if self.tipo == "MASTER" or self.tipo == "DIGITADOR" or self.tipo == "CONFIRMADOR"
      return false
    else
      return true
    end
  end

  before_save :maiusculas_sem_acentos

  def maiusculas_sem_acentos

    self.name = ActiveSupport::Inflector.transliterate(self.name).upcase if !self.name.blank?  
    self.logradouro = ActiveSupport::Inflector.transliterate(self.logradouro).upcase if !self.logradouro.blank?  

  end

  attr_accessor :address

  after_validation :endereco

  def endereco
    if !self.bairro_id.blank?
      self.address = "#{self.bairro.cidade.nome}, #{self.logradouro}, #{self.numero}"
    end
  end

  geocoded_by :address
  after_validation :geocode 

 validate :nao_e_seu_proprio_supervisor

  def nao_e_seu_proprio_supervisor
    if self.id == self.superior_id
      self.errors.add(:tipo,"NAO PODE SER O MESMO USUARIO")

      self.tipo = nil
    end
  end
  

  scope :da_entidade, ->(id) { where("entidade_id = ?", id) }   

  scope :do_usuario, ->(id) { where("user_id = ?", id) }   

  scope :do_bairro, ->(id) { where("bairro_id = ?", id) }  


end
