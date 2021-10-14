class User < ApplicationRecord
  has_many :vehicles, dependent: :destroy

  validates :email, presence: true
  validates :name, presence: true
end
