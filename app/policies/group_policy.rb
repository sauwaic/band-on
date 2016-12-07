class GroupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def display?
    record.users.include?(user) || user == record.admin
  end

  def create?
    true
  end

  def update?
    user == record.admin
  end

  def destroy?
    update?
  end

  def my_groups?
    true
  end

  def filtered_index?
    true
  end

  def my_profile?
    true
  end

end
