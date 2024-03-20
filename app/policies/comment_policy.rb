class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def create?
    true
  end

  ## redirects to root_url
  def update?
    user == comment.author
  end

  def destroy?
    update?
  end
end
