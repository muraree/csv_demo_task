FactoryBot.define do
  factory :vehicle do
    user
    model { "Ford" }
    year { 2020 }
    chassis_number { 123456778 }
    color { 'Black' }
    registration_date { Date.today }
    odometer_reading { 30000 }
  end
end
