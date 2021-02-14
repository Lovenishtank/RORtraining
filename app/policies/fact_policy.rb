class FactPolicy < ApplicationPolicy
    def index?
      true
    end
  
    def show?
      true 
    end
  
    def create?
      user.present?
    end
    def update?
      return true if (user.present? && user == fact.user) || (user.has_role? :admin)
    end
    def destroy?
      return true if (user.present? && user == fact.user) || (user.has_role? :admin)
    end
    private
  
    def fact
      record
    end
  end