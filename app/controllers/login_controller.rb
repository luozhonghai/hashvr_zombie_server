class LoginController < ApplicationController
  def new
    if session[:login] != nil
      redirect_to manage_path
    else
      @admin_user = Admin.new
      render :new
    end
  end

  def create
    @admin_user = Admin.new(user_params)
    if @admin_user.registered?
      session[:login] = @admin_user.id
      redirect_to manage_path
    else
      render :new
    end
  end

  def destroy
    session[:login] = nil
    redirect_to login_new_path
  end

  private

  def user_params
    params.require(:admin).permit(:name,:password)
  end

end
