class CreateSprintBacklogItems < ActiveRecord::Migration
  def change
    create_table :sprint_backlog_items do |t|
      t.integer :backlog_item_id
      t.string :activity
      t.string :iteration
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
