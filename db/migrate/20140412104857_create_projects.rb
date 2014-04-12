class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :proj_URL

      t.timestamps
      t.belongs_to :user
      has_many :teams
    end
  end
end
