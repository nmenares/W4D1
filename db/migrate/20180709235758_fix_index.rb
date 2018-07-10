class FixIndex < ActiveRecord::Migration[5.1]
  def change
    remove_index :art_works, [:artist_id]
    add_index :art_works, [:artist_id, :title], unique: true
  end
end
