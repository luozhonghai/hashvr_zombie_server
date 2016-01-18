class Leke::UsersController < ApplicationController
  def index
    @leke_users = Leke::User.all.page(params[:page])
  end
end
