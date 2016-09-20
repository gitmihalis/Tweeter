class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :micropost_id

      t.timestamps
    end
    add_index :favorites, [:user_id, :micropost_id]
    add_index :favorites, :micropost_id
  end
end
