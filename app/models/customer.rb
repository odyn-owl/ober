class Customer < ActiveRecord::Base
  validates_presence_of  :name, :phone

  def david?
    name =~ /^david$/i
  end
end
