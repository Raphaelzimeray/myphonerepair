class Review < ApplicationRecord
  belongs_to :phone
  belongs_to :user
  validates :rating, numericality: { in: 1..5 }
  validates :comment, presence: true
end
