class Dish < ActiveRecord::Base
  belongs_to :menu_item
  validates_presence_of :name, :price, :message => "Fuck off"
  validates_numericality_of :price   
end
