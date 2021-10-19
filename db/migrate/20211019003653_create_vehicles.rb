class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :transmission
      t.string :fuel_type
      t.integer :doors
      t.integer :mileage
      t.integer :year
      t.integer :rental_company_id

      t.timestamps
    end
  end
end
