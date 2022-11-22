class QuartoPolicy < ApplicationPolicy

  def can_use_quarto?
    user.admin?
  end


  
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
