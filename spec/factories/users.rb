FactoryBot.define do
  factory :user do
    name { "Gemma" }
    email {"gemma#{rand(100000)}@gemma.ca"}
    nationality {'indian'}
  end
end
