class CreateJoinTableEventTag < ActiveRecord::Migration[7.0]
  def up
    create_table :event_tags do |t|
      t.references :event, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end

    add_index :event_tags, [:event_id, :tag_id], unique: true
  end

  def down
    drop_table :event_tags
  end

  # def change
  #   create_join_table :events, :tags do |t|
  #     # t.index [:event_id, :tag_id]
  #     # t.index [:tag_id, :event_id]
  #   end
  # end
end
