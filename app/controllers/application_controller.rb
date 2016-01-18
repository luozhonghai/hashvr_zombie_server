class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session


  private
    def require_login
      if session[:login] == nil
        redirect_to login_new_path
      end
    end
end
