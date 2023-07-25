class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      # create name column with max characters 100
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      # create country column which references country id in countries table
      t.references :country, :destroy => true

      t.timestamps
    end
  end
end
