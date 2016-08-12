class WelcomeController < ApplicationController
   
   
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
   
    
end