class RenameColAnother < ActiveRecord::Migration
  def change
    rename_column(:backlog_items, :type, :item_type)
  end
end
