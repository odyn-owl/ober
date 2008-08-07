class MenuGroupsController < ApplicationController

  def index
    @menu_groups = MenuGroup.find(:all)
  end
  
  def show
    @menu_group = MenuGroup.find(params[:id])
  end
  
  def new
    @menu_group = MenuGroup.new
  end
  
  def edit
    @menu_group = MenuGroup.find(params[:id])
  end
  
  def create
    @menu_group = MenuGroup.new(params[:menu_group])
    
    if @menu_group.save
      flash[:notice] = 'Menu group was added'
      redirect_to(@menu_group )
    else
      render :action=>'new'
    end
  end

  def update
    @menu_group = MenuGroup.find(params[:id])
    
    if @menu_group.update_attributes(params[:menu_group])
      flash[:notice] = 'MenuGroup was succesfully updated'
      redirect_to(@menu_group)
    else
      render(:action => 'edit')
    end
  end
  
  def destroy
    @menu_group = MenuGroup.find(params[:id])
    @menu_group.destroy
    
    redirect_to(menu_groups_url)
  end
end
