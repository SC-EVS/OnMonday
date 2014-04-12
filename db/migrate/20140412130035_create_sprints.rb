class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.integer :backlog_item_id
      t.integer :sprint_number

      t.timestamps
    end
  end
end
