class AddProjectIdToStickis < ActiveRecord::Migration[5.1]
  def change
    add_column :stickis, :project_id, :integer
  end
end
