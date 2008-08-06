class CreateMenuGroups < ActiveRecord::Migration
  def self.up
    create_table :menu_groups do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_groups
  end
end
