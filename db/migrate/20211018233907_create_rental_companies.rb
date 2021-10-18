class CreateRentalCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :rental_companies do |t|
      t.string :name
      t.string :location
      t.integer :inventory

      t.timestamps
    end
  end
end
