class Review < ApplicationRecord
  belongs_to :phone
  belongs_to :user
  validates :rating, numericality: { in: 1..5 }
  validates :comment, presence: true
  NUMBER_RATING = [1, 2, 3, 4, 5]
end
