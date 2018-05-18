class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :content
      t.integer :sequence
      t.date :duedate
      t.integer :project_id
      t.integer :task_id

      t.timestamps
    end
  end
end
