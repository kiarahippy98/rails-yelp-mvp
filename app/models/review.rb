class Review < ApplicationRecord
  belongs_to :restaurant
  # gives me review.restaurant _> returns the instance of restaurant that the review belongs to
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: 0..5
end
