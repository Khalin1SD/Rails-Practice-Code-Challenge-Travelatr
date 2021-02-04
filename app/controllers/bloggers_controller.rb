class BloggersController < ApplicationController
   
   def index
   @blogger = Blogger.all
   end
   
    def show
        @blogger =  Blogger.find_by(params[:id])
    end
    
    def new
        @blogger = Blogger.new
        
    end
    
    def create
        @blogger = Blogger.new
        @blogger.name = params[:name]  
        @blogger.bio = params[:bio]  
        @blogger.age = params[:age]  
        @blogger.save 
        redirect_to blogger_path(@blogger) 
    end
    


end