class StudioPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def studios?
    true
  end

  def slots?
    true
  end
end
