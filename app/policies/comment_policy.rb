class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def create?
    true
  end

  ## redirects to root_url
  def update?
    false
  end

  def destroy?
    update?
  end
end
