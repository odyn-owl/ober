class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.column 'name', :string
      t.column 'price', :decimal, :precision => 2
      t.column 'description', :text       
      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
