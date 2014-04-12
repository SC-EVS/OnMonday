class RenameCol < ActiveRecord::Migration
  def change
    rename_column(:teams, :proj_id, :project_id)
  end
end
