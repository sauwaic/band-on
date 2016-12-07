class DashboardPolicy < ApplicationPolicy
   class Scope < Scope
     def resolve
       scope
     end
   end

   def new_playlist?
    true
   end

    def display?
      record.users.include?(user) || user == record.admin
    end
 end
