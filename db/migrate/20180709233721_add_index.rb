class AddIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :art_works, [:artist_id], unique: true
  end
end
