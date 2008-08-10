class MenuController < ApplicationController
  
  def index
    @dishes = Dish.find(:all, :order => "menu_item_id DESC")  
    @dishes_by_menu = Dish.find(:all, :order => "menu_item_id DESC", :group => :menu_item_id) 
  end
  
end
