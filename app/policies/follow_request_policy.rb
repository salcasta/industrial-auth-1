class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def index?
    user.present?
  end

  def create?
    user.present?
  end

  def update? 
    user.present?
  end

  def destroy?
    user.present?
  end
end
