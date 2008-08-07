class AddMenuGroupIdToDishes < ActiveRecord::Migration
  def self.up
    add_column(:dishes, :menu_group_id, :integer)
  end

  def self.down
    remove_column(:dishes, :menu_group_id)
  end
end
