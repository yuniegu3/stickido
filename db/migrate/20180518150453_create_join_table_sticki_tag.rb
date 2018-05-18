class CreateJoinTableStickiTag < ActiveRecord::Migration[5.1]
  def change
    create_join_table :stickis, :tags do |t|
      t.index [:sticki_id, :tag_id]
      t.index [:tag_id, :sticki_id]
    end
  end
end
