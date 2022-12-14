class Phone < ApplicationRecord
  has_many_attached :photos
  has_many :reparations
  has_many :buys
  has_many :reviews
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :brand, presence: true
  validates :model, presence: true
  validates :capacity, presence: true
  validates :color, presence: true
  validates :camera, presence: true
  validates :year, presence: true
  validates :processor, presence: true
  validates :price, presence: true
end
