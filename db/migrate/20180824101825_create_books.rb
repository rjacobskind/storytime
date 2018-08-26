class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn13
      t.string :image
      t.integer :price
      t.string :format

      t.timestamps
    end
  end
end
