class ChatController < ApplicationController
  def index
    @messages = Message.find(:all)
  end

  def send_data
    @message = Message.create( :body => params[:chat_input] )
    
    render :juggernaut do |page|
      page.call 'CollabHub.handleResponse', "#{h @message.body}"
    end
    render :nothing => true
  end
end
