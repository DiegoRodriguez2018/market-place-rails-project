class ProductPolicy < ApplicationPolicy
  # class Scope < Scope
    attr_reader :user, :product

    def initialize(user, resource)
      @user = user
      @product = resource
    end

    def edit?
      #if this statement is false user cannot edit, if is true user can edit.  
      @user == @product.user
      #it can edit if the current user corresponds to the seller. 
    end

    def destroy?
      @user == @product.user
    end
end
