class MenuController < ApplicationController
  
  def index    
    @menu_items = MenuItem.find(:all,   :include => :dishes )
  end
  
end
