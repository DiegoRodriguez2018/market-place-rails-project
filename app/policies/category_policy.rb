class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    attr_reader :user, :category

    def initialize(user, category)
      @user = user
      @category = category
    end

    def index?
      #if this statement is false user cannot edit, if is true user can edit.  
      #it can edit if the current user corresponds to the seller. 
      false
    end
    

    def show?
      #if this statement is false user cannot edit, if is true user can edit.  
      #it can edit if the current user corresponds to the seller. 
      false
    end

    def edit?
      #if this statement is false user cannot edit, if is true user can edit.  
      #it can edit if the current user corresponds to the seller. 
      false
    end

    def destroy?
      false
    end
  end
end
