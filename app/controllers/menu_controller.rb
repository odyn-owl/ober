class MenuController < ApplicationController
  
  def index    
    
    @dishes = Dish.find(:all)    
   
     #respond_to do |format|
     # format.html # index.html.erb
     # format.xml  { render :xml => @dishes }
    #end
  end
end
