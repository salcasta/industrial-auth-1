class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def index?
    true
  end

  def create?
    true
  end

  def update? 
    true
  end

  def destroy?
    update?
  end
end
