class CreateBookDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :book_details do |t|
      # create book column which references book id in books table
      t.references :book, null: false, :destroy => true
      # create price column with max integer length of 10 and decimal length of 2
      t.decimal :price, precision: 10, scale: 2
      # create discount column with max integer length of 10 and decimal length of 2
      t.decimal :discount, precision: 10, scale: 2
      # create is_hard_copy column with default value of true
      t.boolean :is_hard_copy
      t.timestamps
    end
  end
end
