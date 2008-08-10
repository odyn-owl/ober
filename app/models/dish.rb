class Dish < ActiveRecord::Base
  belongs_to :menu_group
  validates_presence_of :name, :price
  validates_numericality_of :price   
end
