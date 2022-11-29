class Phone < ApplicationRecord
  has_one_attached :photo
  has_many :reparations
  validates :brand, presence: true
  validates :model, presence: true
  validates :capacity, presence: true
  validates :color, presence: true
  validates :camera, presence: true
  validates :year, presence: true
  validates :processor, presence: true
  validates :price, presence: true
end
