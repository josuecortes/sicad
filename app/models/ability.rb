class Ability
  include CanCan::Ability

  def initialize(user)
    if user.tipo == "MASTER"
      can :manage, :all   
    end
    if user.tipo == "ADMINISTRADOR"
      can :manage, User  
      
    end
  end
end
