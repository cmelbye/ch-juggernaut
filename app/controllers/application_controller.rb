# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  before_filter :login_required
  
  protected
  def login_required
    if !session[:user_name]
      redirect_to :controller => "session", :action => "login"
      false
    end
  end
end
