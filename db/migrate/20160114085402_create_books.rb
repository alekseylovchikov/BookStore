class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :publisher_id
      t.integer :author_id
      t.text :info
      t.string :buy
      t.string :year
      t.integer :pages
      t.string :price

      t.timestamps null: false
    end
  end
end
