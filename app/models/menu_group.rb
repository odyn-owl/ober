class MenuGroup < ActiveRecord::Base
  has_many  :dishes
  validates_presence_of :name, :message=>'blank name is not allowed '
end
