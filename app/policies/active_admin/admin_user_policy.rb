# app/policies/active_admin/
module ActiveAdmin

  class AdminUserPolicy < ApplicationPolicy

    class Scope < Struct.new(:user, :scope)
      def resolve
        AdminUser.all
        #scope
      end
    end

    def index?
      true
    end

    def show?
      true
    end

  end

end