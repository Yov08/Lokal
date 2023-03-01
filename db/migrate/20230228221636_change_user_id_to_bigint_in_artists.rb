class ChangeUserIdToBigintInArtists < ActiveRecord::Migration[7.0]
  def change
    change_column :artists, :user_id, :bigint
  end
end
