class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|

      # create title column with max characters 255
      t.string :title, limit: 255
      # create author column which references author id in authors table
      t.references :author, :destroy => true
      # create isbn column which has max integer length of 13
      t.integer :isbn, limit: 13
      t.timestamps
    end
  end
end
