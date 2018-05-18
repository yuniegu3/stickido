class CreateStickis < ActiveRecord::Migration[5.1]
  def change
    create_table :stickis do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
