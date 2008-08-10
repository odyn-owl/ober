class RenameMenuGroupToMenuIem < ActiveRecord::Migration
  def self.up
    rename_table(:menu_groups, :menu_items)
    rename_column(:dishes, :menu_group_id, :menu_item_id)
  end

  def self.down
    rename_table(:menu_items, :menu_groups)
    rename_column(:dishes, :menu_item_id, :menu_group_id)
  end
end
