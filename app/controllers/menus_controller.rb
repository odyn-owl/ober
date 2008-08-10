class MenusController < ApplicationController
  
  def show
    @menu_groups = MenuGroup.find(:all, :order => 'name')
   
    respond_to do |format|
     format.html # index.html.erb
    end
  end

end
