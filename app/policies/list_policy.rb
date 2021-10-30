class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.lists
    end
  end
end
