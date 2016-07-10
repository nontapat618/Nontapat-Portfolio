class MessagesController < ApplicationController


    def new  
  
    end


    def create
       @message = Message.new(message_param)
       if @message.save
        flash[:success]  = "Message has successfully send"
        redirect_to root_path+'#contact'
       else    
        render 'welcome/index'        
       end
       

        
    end
    
    
    private
    def message_param
        
        params.require(:message).permit(:name,:company,:message)
        
    end    
    
end    