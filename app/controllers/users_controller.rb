class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following discover ]
  before_action :feed_discover_authorization, only: %i[ feed discover ]

  private

    def set_user
      if params[:username]
        @user = authorize User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end

    def feed_discover_authorization
      if @user != current_user
        redirect_back(fallback_location: root_url, alert: "You are not authorized for that")
      end
    end 
end
