class Dish < ActiveRecord::Base

  validates_presence_of :name, :price, :message => "Fuck off"
  validates_numericality_of :price 
  
end
