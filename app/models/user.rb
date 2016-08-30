class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  self.table_name = "users"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :da_entidade, ->(ent) { where("entidade_id = ?", ent) }

  belongs_to :entidade
  belongs_to :cidade
  belongs_to :superior, class_name: "User"
  has_many :pessoas, dependent: :restrict_with_error

  validates_presence_of :tipo, :name, :email
  validates_presence_of :entidade_id, :if => :checar_tipo
  validates_presence_of :superior_id, :if => :checar_tipo2
  validates_presence_of :cidade_id, :if => :checar_tipo

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

end
