class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # gives me restaurant.reviews -> returns all the reviews about the restaurant
  validates :name, :address, :category, presence: true

  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
