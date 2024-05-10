class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.integer :first_publish_year
      t.text :description

      t.timestamps
    end
  end
end
