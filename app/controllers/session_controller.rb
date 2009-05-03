class SessionController < ApplicationController
  skip_before_filter :login_required
  
  def login
    if request.post? and params[:user_name]
      session[:user_name] = params[:user_name]
      redirect_to root_path
    end
  end

  def logout
    session[:user_name] = nil
    flash[:notice] = 'You are now logged out.'
    redirect_to login_path
  end
end
