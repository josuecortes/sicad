class Ability
  include CanCan::Ability

  def initialize(user)
    if user.tipo == "MASTER"
      can :manage, :all
      cannot :create, Pessoa
      cannot :create, Imovel
      cannot :create, Veiculo
      cannot :create, Agenda

    end
    if user.tipo == "ADMINISTRADOR"
      can :manage, User, :entidade_id => user.entidade_id
      can :manage, Pessoa, :entidade_id => user.entidade_id
      can :manage, Agenda, :entidade_id => user.entidade_id
      can :manage, Veiculo, :entidade_id => user.entidade_id
      can :manage, Imovel, :entidade_id => user.entidade_id
      
    end
    if user.tipo == "DIGITADOR"
     can :manage, User, :entidade_id => user.entidade_id 
     cannot :manage, User,:tipo=> "ADMINISTRADOR"
     cannot :manage, User,:tipo=> "DIGITADOR"
     can :manage, User, [:tipo=>"DIGITADOR",:id=>user.id]
     cannot :manage, User,:tipo=> "CONFIRMADOR"
     can :manage, Agenda, :entidade_id => user.entidade_id
     can :manage, Veiculo, :entidade_id => user.entidade_id
     can :manage, Imovel, :entidade_id => user.entidade_id
   end

   if user.tipo == "CONFIRMADOR"
     can :manage, User, :entidade_id => user.entidade_id 
     cannot :manage, User,:tipo=> "ADMINISTRADOR"
     cannot :manage, User,:tipo=> "DIGITADOR"
     can :manage, User, [:tipo=>"DIGITADOR",:id=>user.id]
     cannot :manage, User,:tipo=> "CONFIRMADOR"
     can :manage, Agenda, :entidade_id => user.entidade_id
     can :manage, Veiculo, :entidade_id => user.entidade_id
     can :manage, Imovel, :entidade_id => user.entidade_id
   end
 end
end
