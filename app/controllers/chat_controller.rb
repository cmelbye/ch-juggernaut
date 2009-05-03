class ChatController < ApplicationController
  before_filter :enable_juggernaut
  
  def index
    @messages = Message.find(:all)
  end

  def send_data
    @message = Message.create( :body => params[:chat_input], :created_by => session[:user_name] )
    
    render :juggernaut do |page|
      page.call('CollabHub.handleResponse', (h @message.body), (h @message.created_by))
    end
    render :nothing => true
  end
  
  protected
  def enable_juggernaut
    @enable_juggernaut = true
  end
end
