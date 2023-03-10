class RenameEventTagsToEventsTags < ActiveRecord::Migration[7.0]
  def change
    rename_table :event_tags, :events_tags
  end
end
