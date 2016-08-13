class SessionsController < ApplicationController
   
   
   def new
       
   end
   
   def create
   
      @userName = params[:session][:userName]
      @password = params[:session][:password]
      
      if("nontapat"==@userName and "longtimepassword"==@password)
         session[:userLogin] = "1"
         redirect_to messageList_path
      else
         redirect_to login_path
      end

      

   end
   
   def destroy
    
   end
    
end