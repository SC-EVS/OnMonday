class CreateBacklogItems < ActiveRecord::Migration
  def change
    create_table :backlog_items do |t|
      t.integer :project_id
      t.string :type
      t.string :title
      t.string :state
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
