class Vehicle < ApplicationRecord
  require 'csv'
  belongs_to :user

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      next if row[0] == 'name' || row[0] == nil

      user_hash = {name: row['name'], nationality: row['nationality'], email: row['email']}
      user = User.create!(user_hash)

      vehicle_hash = {model: row['model'], year: row['year'], color: row['color'], chassis_number: row['chassis_number'], registration_date: row['registration_date'], odometer_reading: row['odometer_reading'], user_id: user.id}
      Vehicle.create!(vehicle_hash)
    end
  end

  def self.to_csv
    attributes = %w{Nationality customers_count}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      User.pluck(:nationality).uniq.each do |nationality|
        user_count = User.where(nationality: nationality).count
        csv << [nationality, user_count]
      end
    end
  end
end
