class Ability
  include CanCan::Ability

  def initialize(user)
    if user.tipo == "MASTER"
      can :manage, :all
      cannot :create, Pessoa

    end
    if user.tipo == "ADMINISTRADOR"
      can :manage, User, :entidade_id => user.entidade_id 
      can :manage, Pessoa, :entidade_id => user.entidade_id
      cannot :create, Pessoa
      can :manage, Agenda, :entidade_id => user.entidade_id
      can :manage, Veiculo, :entidade_id => user.entidade_id
      can :manage, Imovel, :entidade_id => user.entidade_id
      
    end
    if user.tipo == "USUARIO"
      can :manage, User, :id => user.id  
      can :manage, Pessoa, :user_id => user.id
      can :manage, Veiculo, :user_id => user.id
      can :manage, Imovel, :user_id => user.id
      
    end
  end
end
