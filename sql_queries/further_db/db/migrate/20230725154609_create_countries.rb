class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      # create name column with max characters 255
      t.string :name, limit: 255
      # create code column with max characters 3
      t.string :code, limit: 3

      t.timestamps
    end
  end
end
