class MenusController < ApplicationController
 
  def show
    @menu_items = MenuItem.find(:all,   :include => :dishes )
  end
  
end
