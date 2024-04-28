class CreateFavoriteds < ActiveRecord::Migration[7.1]
  def change
    create_table :favoriteds do |t|
      t.integer :User_id
      t.integer :Book_id

      t.timestamps
    end
  end
end
