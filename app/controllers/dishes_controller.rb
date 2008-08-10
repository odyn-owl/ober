class DishesController < ApplicationController
  
  before_filter :menu_groups_collection , :only => [:new, :edit, :create, :update]
  
  # GET /dishes
  # GET /dishes.xml
  def index
    @dishes = Dish.find(:all, :order => "menu_group_id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dishes }
    end
  end

  # GET /dishes/1
  # GET /dishes/1.xml
  def show
    @dish = Dish.find(params[:id])
    @menu_group = MenuGroup.find @dish.menu_group_id if @dish.menu_group_id
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dish }
    end
  end

  # GET /dishes/new
  # GET /dishes/new.xml
  def new
    @dish = Dish.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dish }
    end
  end

  # GET /dishes/1/edit
  def edit
    @dish = Dish.find(params[:id])
  end

  # POST /dishes
  # POST /dishes.xml
  def create
    @dish = Dish.new(params[:dish])

    respond_to do |format|
      if @dish.save
        flash[:notice] = 'Dish was successfully created.'
        format.html { redirect_to(@dish) }
        format.xml  { render :xml => @dish, :status => :created, :location => @dish }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dishes/1
  # PUT /dishes/1.xml
  def update
    @dish = Dish.find(params[:id])
    
    respond_to do |format|
      if @dish.update_attributes(params[:dish])
        flash[:notice] = 'Dish was successfully updated.'
        format.html { redirect_to(@dish) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.xml
  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy

    respond_to do |format|
      format.html { redirect_to(dishes_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def menu_groups_collection
    @menu_groups ||= MenuGroup.find(:all).collect {|p|  [p.name, p.id]  }
  end
  
end
