class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def create?
    user.present?
  end

  ## redirects to root_url
  def update?
    user.present?
  end

  def destroy?
    user.present?
  end
end
