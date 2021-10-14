class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.integer :year
      t.integer :chassis_number
      t.string :color
      t.datetime :registration_date
      t.integer :odometer_reading
      t.integer :user_id
      
      t.timestamps
    end
  end
end
