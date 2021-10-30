class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.lists
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    user == record.user
  end
end
