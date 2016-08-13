class WelcomeController < ApplicationController
   
    before_action :authorize , only: [:message]
   
    def index
        if(@message == nil)
            @message = Message.new
            print 'sadasdsdsancxkxsad'
        end
    end
    
    def message
        @messages = Message.all
    end    
   
   
    private
    def message_param
        
        params.require(:message).permit(:name,:company,:message)
        
    end   
    def authorize
        @userLogin  = session[:userLogin]
        if("1"!=@userLogin)
           redirect_to login_path 
        end    
        
    end   
   
    
end